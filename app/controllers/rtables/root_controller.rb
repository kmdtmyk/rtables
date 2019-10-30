# frozen_string_literal: true

require_dependency 'rtables/application_controller'

module Rtables
  class RootController < ApplicationController

    def index
      internal_tables = %w(
        schema_migrations
        ar_internal_metadata
        active_storage_attachments
        active_storage_blobs
      )
      table_names = ActiveRecord::Base.connection.tables - internal_tables
      @models = table_names.map do |table_name|
        table_name.classify.constantize
      end
    end

  end
end
