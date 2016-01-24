class Record
  attr_accessor :meta, :resource

  def self.get_class(record_name)
    self.classes[record_name][:class]
  end

  def self.get_type(record_name)
    self.classes[record_name][:type]
  end

  private

  def self.classes
    {
      'deqt' => { class: ::Deqt::Record, type: 'dëqt' },
      'desc' => { class: ::Desc::Record, type: 'dësc' },
      'dude' => { class: ::Dude::Record, type: 'düde' },
      'flet' => { class: ::Flet::Record, type: 'flët' },
      'govt' => { class: ::Govt::Record, type: 'gövt' },
      'junk' => { class: ::Junk::Record, type: 'jünk' },
      'misn' => { class: ::Misn::Record, type: 'mïsn' },
      'nebu' => { class: ::Nebu::Record, type: 'nëbu' },
      'outf' => { class: ::Outf::Record, type: 'oütf' },
      'oops' => { class: ::Oops::Record, type: 'öops' },
      'pers' => { class: ::Pers::Record, type: 'përs' },
      'ship' => { class: ::Ship::Record, type: 'shïp' },
      'spin' => { class: ::Spin::Record, type: 'spïn' },
      'spob' => { class: ::Spob::Record, type: 'spöb' },
      'syst' => { class: ::Syst::Record, type: 'sÿst' },
      'weap' => { class: ::Weap::Record, type: 'wëap' },
      'year' => { class: ::Year::Record, type: 'yëä®' }
    }
  end

end
