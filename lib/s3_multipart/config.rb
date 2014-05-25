require 'singleton'

module S3Multipart
  class Config
    include Singleton
    attr_accessor :s3_access_key, :s3_secret_key, :bucket_name, :revision

    def self.configure(block)
      block.call(self.instance)
    end

  end
end
