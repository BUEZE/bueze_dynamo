Dir.glob('./{config,models,helpers,controllers}/*init.rb').each do |file|
  require file
end
run BuezeDynamo
