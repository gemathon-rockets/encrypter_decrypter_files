require 'yaml'

module Helper
  def write(filename, hash)
  File.open(filename, "w+") do |f|
    f.write(yaml(hash))
  end
end

def yaml(hash)
  method = hash.respond_to?(:ya2yaml) ? :ya2yaml : :to_yaml
  string = hash.deep_stringify_keys.send(method)
  string.gsub("!ruby/symbol ", ":").sub("---","").split("\n").map(&:rstrip).join("\n").strip
end

end

class Hash
  def deep_stringify_keys
    new_hash = {}
    self.each do |key, value|
      new_hash.merge!(key.to_s => (value.is_a?(Hash) ? value.deep_stringify_keys : value))
    end
  end
end