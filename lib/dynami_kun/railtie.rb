module DynamiKun
  class Railtie < ::Rails::Railtie
    ActiveSupport.on_load(:active_record) do
      require 'dynami_kun/active_record/connection_adapters/abstract_mysql_adapter'
    end
  end
end
