# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'
plugin 'cocoapods-xcremotecache'

xcremotecache({
    'cache_addresses' => ['http://localhost:8080/cache'], 
    'primary_repo' => '.',
    'mode' => 'producer',
    'final_target' => 'Proj',
    'custom_rewrite_envs' => ['PODS_TARGET_SRCROOT', 'BUILT_PRODUCTS_DIR', 'TARGET_BUILD_DIR'],
})

target 'Proj' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  pod 'name1', :path => 'name1/'
  pod 'name2', :path => 'name1/'
  # Pods for Proj

end
