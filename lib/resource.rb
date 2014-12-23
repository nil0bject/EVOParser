class Resource < BinData::Record
  endian :big

  def self.get_class(resource_type)
    self.classes[resource_type]
  end

  private

  def self.classes
    {
      'dëqt' => ::Deqt,
      'dësc' => ::Desc,
      'düde' => ::Dude,
      'flët' => ::Flet,
      'gövt' => ::Govt,
      'jünk' => ::Junk,
      'mïsn' => ::Misn,
      'nëbu' => ::Nebu,
      'oütf' => ::Outf,
      'öops' => ::Oops,
      'përs' => ::Pers,
      'shïp' => ::Ship,
      'spïn' => ::Spin,
      'spöb' => ::Spob,
      'sÿst' => ::Syst,
      'wëap' => ::Weap,
      'yëä®' => ::Year
    }
  end

end
