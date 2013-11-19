=begin
salutations = [
  'Mr.',
  'Mrs.',
  'Mr.',
  'Dr.',
  'Ms.'
]
=end
salutations = [
  ['Mr.', 'Mrs.'],
  'Mrs.',
  ['Mr.', 'Mrs.'],
  ['Dr.'],
  'Ms.'
]

first_names = [
  'John',
  'Jane',
  'Sam',
  'Louise',
  'Kyle'
]

last_names = [
  'Dillinger',
  'Cook',
  'Livingston',
  'Levinger',
  'Merlotte'
]

addresses = [
  '33 Foolish Lane, Boston MA 02210',
  '45 Cottage Way, Dartmouth, MA 02342',
  "54 Sally's Court, Bridgewater, MA 02324",
  '4534 Broadway, Boston, MA 02110',
  '4231 Cynthia Drive, Raynham, MA 02767'
]

contacts =  salutations.zip(first_names,last_names,addresses)
contact_hash = {}
contacts.each do |contact|
  contact_hash[:contact] = contact
  title = contact_hash[:contact][0].is_a?(Array) ? contact_hash[:contact][0].join(" and ") : contact_hash[:contact][0]
  puts title + " " + contact_hash[:contact][1] + " " + contact_hash[:contact][2]
  puts contact_hash[:contact][3]
end
