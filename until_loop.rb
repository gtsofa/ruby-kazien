answer = ''
until answer == 'no' do
  print 'Continue repeating yourself ? [y/n]'
  answer = gets.chomp.downcase
end