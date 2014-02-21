class Base
	def initialize(opts = {})
		@path = opts[:path]
		@key_size = opts[:key_size] || 256
	end
end