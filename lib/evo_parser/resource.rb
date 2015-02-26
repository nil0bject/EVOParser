class Resource < BinData::Record
  endian :big

  def self.get_class(resource_type)
    self.classes[resource_type]
  end

  private

  def self.classes
    {
      'dëqt' => ::Deqt::Resource,
      'dësc' => ::Desc::Resource,
      'düde' => ::Dude::Resource,
      'flët' => ::Flet::Resource,
      'gövt' => ::Govt::Resource,
      'jünk' => ::Junk::Resource,
      'mïsn' => ::Misn::Resource,
      'nëbu' => ::Nebu::Resource,
      'oütf' => ::Outf::Resource,
      'öops' => ::Oops::Resource,
      'përs' => ::Pers::Resource,
      'shïp' => ::Ship::Resource,
      'spïn' => ::Spin::Resource,
      'spöb' => ::Spob::Resource,
      'sÿst' => ::Syst::Resource,
      'wëap' => ::Weap::Resource,
      'yëä®' => ::Year::Resource
    }
  end

end
