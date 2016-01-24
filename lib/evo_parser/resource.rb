require 'json'

class Resource < BinData::Record
  endian :big

  def self.get_class(resource_type)
    self.classes[resource_type]
  end

  private

  def self.classes
    {
      'dëqt' => ::Deqt::Record,
      'dësc' => ::Desc::Record,
      'düde' => ::Dude::Record,
      'flët' => ::Flet::Record,
      'gövt' => ::Govt::Record,
      'jünk' => ::Junk::Record,
      'mïsn' => ::Misn::Record,
      'nëbu' => ::Nebu::Record,
      'oütf' => ::Outf::Record,
      'öops' => ::Oops::Record,
      'përs' => ::Pers::Record,
      'shïp' => ::Ship::Record,
      'spïn' => ::Spin::Record,
      'spöb' => ::Spob::Record,
      'sÿst' => ::Syst::Record,
      'wëap' => ::Weap::Record,
      'yëä®' => ::Year::Record
    }
  end

end
