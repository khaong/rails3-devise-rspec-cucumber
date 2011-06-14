task :default => :package

task :package do
  build_number = ENV['GO_PIPELINE_COUNTER'].nil? ? '0000-dev' : ENV['GO_PIPELINE_COUNTER'] 
  rm_rf "package"  
  mkdir "package"
  sh "zip -r package/app_#{build_number}.zip * -x package"
end
  