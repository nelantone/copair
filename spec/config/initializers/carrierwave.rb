# frozen_string_literal: true

after do
  if Rails.env.test?
    @document.versions.each do |v|
      store_path = File.dirname(File.dirname(v.document_file.url))
      temp_path = v.document_file.cache_dir
      FileUtils.rm_rf(Dir["#{Rails.root}/public/#{store_path}/[^.]*"])
      FileUtils.rm_rf(Dir["#{temp_path}/[^.]*"])
    end
  end
end
