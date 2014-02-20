class Base
	def initialize(opts)
		@path = opts[:path]
		@iv = opts[:iv]
		@key = opts[:key]
	end
end