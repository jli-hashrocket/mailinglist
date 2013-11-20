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
contact_item = {}
contacts.each do |contact|
  contact_hash[:contact] = contact
  contact_item[:salutations] = contact_hash[:contact][0]
  contact_item[:first_names] = contact_hash[:contact][1]
  contact_item[:last_names] = contact_hash[:contact][2]
  contact_item[:addresses] = contact_hash[:contact][3]
  title = contact_item[:salutations].is_a?(Array) ? contact_item[:salutations].join(" and ") : contact_item[:salutations]
  puts title + " " + contact_item[:first_names] + " " + contact_item[:last_names]
  puts contact_item[:addresses]
end
