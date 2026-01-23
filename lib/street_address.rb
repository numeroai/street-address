module StreetAddress
  class US
    VERSION = '2.0.0'

    DIRECTIONAL = {
      "north" => "N",
      "northeast" => "NE",
      "east" => "E",
      "southeast" => "SE",
      "south" => "S",
      "southwest" => "SW",
      "west" => "W",
      "northwest" => "NW"
    }
    DIRECTION_CODES = DIRECTIONAL.invert

    # taken from https://pe.usps.com/text/pub28/28apc_002.htm
    STREET_TYPES = {
      'allee' => 'aly',
      'alley' => 'aly',
      'ally' => 'aly',
      'anex' => 'anx',
      'annex' => 'anx',
      'annx' => 'anx',
      'arcade' => 'arc',
      'av' => 'ave',
      'aven' => 'ave',
      'avenu' => 'ave',
      'avenue' => 'ave',
      'avn' => 'ave',
      'avnue' => 'ave',
      'bayoo' => 'byu',
      'bayou' => 'byu',
      'beach' => 'bch',
      'bend' => 'bnd',
      'bluf' => 'blf',
      'bluff' => 'blf',
      'bluffs' => 'blfs',
      'bot' => 'btm',
      'bottm' => 'btm',
      'bottom' => 'btm',
      'boul' => 'blvd',
      'boulevard' => 'blvd',
      'boulv' => 'blvd',
      'brnch' => 'br',
      'branch' => 'br',
      'brdge' => 'brg',
      'bridge' => 'brg',
      'brook' => 'brk',
      'brooks' => 'brks',
      'burg' => 'bg',
      'burgs' => 'bgs',
      'bypa' => 'byp',
      'bypas' => 'byp',
      'bypass' => 'byp',
      'byps' => 'byp',
      'camp' => 'cp',
      'cmp' => 'cp',
      'canyn' => 'cyn',
      'canyon' => 'cyn',
      'cnyn' => 'cyn',
      'cape' => 'cpe',
      'causeway' => 'cswy',
      'causwa' => 'cswy',
      'cen' => 'ctr',
      'cent' => 'ctr',
      'center' => 'ctr',
      'centr' => 'ctr',
      'centre' => 'ctr',
      'cnter' => 'ctr',
      'cntr' => 'ctr',
      'centers' => 'ctrs',
      'circ' => 'cir',
      'circl' => 'cir',
      'circle' => 'cir',
      'crcl' => 'cir',
      'crcle' => 'cir',
      'circles' => 'cirs',
      'cliff' => 'clf',
      'cliffs' => 'clfs',
      'club' => 'clb',
      'common' => 'cmn',
      'commons' => 'cmns',
      'corner' => 'cor',
      'corners' => 'cors',
      'course' => 'crse',
      'court' => 'ct',
      'courts' => 'cts',
      'cove' => 'cv',
      'coves' => 'cvs',
      'creek' => 'crk',
      'crescent' => 'cres',
      'crsent' => 'cres',
      'crsnt' => 'cres',
      'crest' => 'crst',
      'crossing' => 'xing',
      'crssng' => 'xing',
      'crossroad' => 'xrd',
      'crossroads' => 'xrds',
      'curve' => 'curv',
      'dale' => 'dl',
      'dam' => 'dm',
      'div' => 'dv',
      'divide' => 'dv',
      'dvd' => 'dv',
      'driv' => 'dr',
      'drive' => 'dr',
      'drv' => 'dr',
      'drives' => 'drs',
      'estate' => 'est',
      'estates' => 'ests',
      'exp' => 'expy',
      'expr' => 'expy',
      'express' => 'expy',
      'expressway' => 'expy',
      'expw' => 'expy',
      'extension' => 'ext',
      'extn' => 'ext',
      'extnsn' => 'ext',
      'falls' => 'fls',
      'ferry' => 'fry',
      'frry' => 'fry',
      'field' => 'fld',
      'fields' => 'flds',
      'flat' => 'flt',
      'flats' => 'flts',
      'ford' => 'frd',
      'fords' => 'frds',
      'forest' => 'frst',
      'forests' => 'frst',
      'forg' => 'frg',
      'forge' => 'frg',
      'forges' => 'frgs',
      'fork' => 'frk',
      'forks' => 'frks',
      'fort' => 'ft',
      'frt' => 'ft',
      'freeway' => 'fwy',
      'freewy' => 'fwy',
      'frway' => 'fwy',
      'frwy' => 'fwy',
      'garden' => 'gdn',
      'gardn' => 'gdn',
      'grden' => 'gdn',
      'grdn' => 'gdn',
      'gardens' => 'gdns',
      'grdns' => 'gdns',
      'gateway' => 'gtwy',
      'gatewy' => 'gtwy',
      'gatway' => 'gtwy',
      'gtway' => 'gtwy',
      'glen' => 'gln',
      'glens' => 'glns',
      'green' => 'grn',
      'greens' => 'grns',
      'grov' => 'grv',
      'grove' => 'grv',
      'groves' => 'grvs',
      'harb' => 'hbr',
      'harbor' => 'hbr',
      'harbr' => 'hbr',
      'hrbor' => 'hbr',
      'harbors' => 'hbrs',
      'haven' => 'hvn',
      'ht' => 'hts',
      'highway' => 'hwy',
      'highwy' => 'hwy',
      'hiway' => 'hwy',
      'hiwy' => 'hwy',
      'hway' => 'hwy',
      'hill' => 'hl',
      'hills' => 'hls',
      'hllw' => 'holw',
      'hollow' => 'holw',
      'hollows' => 'holw',
      'holws' => 'holw',
      'island' => 'is',
      'islnd' => 'is',
      'islands' => 'iss',
      'islnds' => 'iss',
      'isles' => 'isle',
      'jction' => 'jct',
      'jctn' => 'jct',
      'junction' => 'jct',
      'junctn' => 'jct',
      'juncton' => 'jct',
      'jctns' => 'jcts',
      'junctions' => 'jcts',
      'key' => 'ky',
      'keys' => 'kys',
      'knol' => 'knl',
      'knoll' => 'knl',
      'knolls' => 'knls',
      'lake' => 'lk',
      'lakes' => 'lks',
      'landing' => 'lndg',
      'lndng' => 'lndg',
      'lane' => 'ln',
      'light' => 'lgt',
      'lights' => 'lgts',
      'loaf' => 'lf',
      'lock' => 'lck',
      'locks' => 'lcks',
      'ldge' => 'ldg',
      'lodg' => 'ldg',
      'lodge' => 'ldg',
      'loops' => 'loop',
      'manor' => 'mnr',
      'manors' => 'mnrs',
      'meadow' => 'mdw',
      'mdw' => 'mdws',
      'meadows' => 'mdws',
      'medows' => 'mdws',
      'mill' => 'ml',
      'mills' => 'mls',
      'missn' => 'msn',
      'mssn' => 'msn',
      'motorway' => 'mtwy',
      'mnt' => 'mt',
      'mount' => 'mt',
      'mntain' => 'mtn',
      'mntn' => 'mtn',
      'mountain' => 'mtn',
      'mountin' => 'mtn',
      'mtin' => 'mtn',
      'mntns' => 'mtns',
      'mountains' => 'mtns',
      'neck' => 'nck',
      'orchard' => 'orch',
      'orchrd' => 'orch',
      'ovl' => 'oval',
      'overpass' => 'opas',
      'prk' => 'park',
      'parks' => 'park',
      'parkway' => 'pkwy',
      'parkwy' => 'pkwy',
      'pkway' => 'pkwy',
      'pky' => 'pkwy',
      'parkways' => 'pkwy',
      'pkwys' => 'pkwy',
      'passage' => 'psge',
      'paths' => 'path',
      'pikes' => 'pike',
      'pine' => 'pne',
      'pines' => 'pnes',
      'place' => 'pl',
      'plain' => 'pln',
      'plains' => 'plns',
      'plaza' => 'plz',
      'plza' => 'plz',
      'point' => 'pt',
      'points' => 'pts',
      'port' => 'prt',
      'ports' => 'prts',
      'prairie' => 'pr',
      'prr' => 'pr',
      'rad' => 'radl',
      'radial' => 'radl',
      'radiel' => 'radl',
      'ranch' => 'rnch',
      'ranches' => 'rnch',
      'rnchs' => 'rnch',
      'rapid' => 'rpd',
      'rapids' => 'rpds',
      'rest' => 'rst',
      'rdge' => 'rdg',
      'ridge' => 'rdg',
      'ridges' => 'rdgs',
      'river' => 'riv',
      'rvr' => 'riv',
      'rivr' => 'riv',
      'road' => 'rd',
      'roads' => 'rds',
      'route' => 'rte',
      'shoal' => 'shl',
      'shoals' => 'shls',
      'shoar' => 'shr',
      'shore' => 'shr',
      'shoars' => 'shrs',
      'shores' => 'shrs',
      'skyway' => 'skwy',
      'spng' => 'spg',
      'spring' => 'spg',
      'sprng' => 'spg',
      'spngs' => 'spgs',
      'springs' => 'spgs',
      'sprngs' => 'spgs',
      'spurs' => 'spur',
      'sqr' => 'sq',
      'sqre' => 'sq',
      'squ' => 'sq',
      'square' => 'sq',
      'sqrs' => 'sqs',
      'squares' => 'sqs',
      'station' => 'sta',
      'statn' => 'sta',
      'stn' => 'sta',
      'strav' => 'stra',
      'straven' => 'stra',
      'stravenue' => 'stra',
      'stravn' => 'stra',
      'strvn' => 'stra',
      'strvnue' => 'stra',
      'stream' => 'strm',
      'streme' => 'strm',
      'street' => 'st',
      'strt' => 'st',
      'str' => 'st',
      'streets' => 'sts',
      'sumit' => 'smt',
      'sumitt' => 'smt',
      'summit' => 'smt',
      'terr' => 'ter',
      'terrace' => 'ter',
      'throughway' => 'trwy',
      'trace' => 'trce',
      'traces' => 'trce',
      'track' => 'trak',
      'tracks' => 'trak',
      'trk' => 'trak',
      'trks' => 'trak',
      'trafficway' => 'trfy',
      'trail' => 'trl',
      'trails' => 'trl',
      'trls' => 'trl',
      'trailer' => 'trlr',
      'trlrs' => 'trlr',
      'tunel' => 'tunl',
      'tunls' => 'tunl',
      'tunnel' => 'tunl',
      'tunnels' => 'tunl',
      'tunnl' => 'tunl',
      'trnpk' => 'tpke',
      'turnpike' => 'tpke',
      'turnpk' => 'tpke',
      'underpass' => 'upas',
      'union' => 'un',
      'unions' => 'uns',
      'valley' => 'vly',
      'vally' => 'vly',
      'vlly' => 'vly',
      'valleys' => 'vlys',
      'vdct' => 'via',
      'viadct' => 'via',
      'viaduct' => 'via',
      'view' => 'vw',
      'views' => 'vws',
      'vill' => 'vlg',
      'villag' => 'vlg',
      'village' => 'vlg',
      'villg' => 'vlg',
      'villiage' => 'vlg',
      'villages' => 'vlgs',
      'ville' => 'vl',
      'vist' => 'vis',
      'vista' => 'vis',
      'vst' => 'vis',
      'vsta' => 'vis',
      'walks' => 'walk',
      'wy' => 'way',
      'well' => 'wl',
      'wells' => 'wls'
    }.freeze

    STREET_TYPES_LIST = {}
    STREET_TYPES.to_a.each do |item|
      STREET_TYPES_LIST[item[0]] = true
      STREET_TYPES_LIST[item[1]] = true
    end

    STATE_CODES = {
      "alabama" => "AL",
      "alaska" => "AK",
      "american samoa" => "AS",
      "arizona" => "AZ",
      "arkansas" => "AR",
      "california" => "CA",
      "colorado" => "CO",
      "connecticut" => "CT",
      "delaware" => "DE",
      "district of columbia" => "DC",
      "federated states of micronesia" => "FM",
      "florida" => "FL",
      "georgia" => "GA",
      "guam" => "GU",
      "hawaii" => "HI",
      "idaho" => "ID",
      "illinois" => "IL",
      "indiana" => "IN",
      "iowa" => "IA",
      "kansas" => "KS",
      "kentucky" => "KY",
      "louisiana" => "LA",
      "maine" => "ME",
      "marshall islands" => "MH",
      "maryland" => "MD",
      "massachusetts" => "MA",
      "michigan" => "MI",
      "minnesota" => "MN",
      "mississippi" => "MS",
      "missouri" => "MO",
      "montana" => "MT",
      "nebraska" => "NE",
      "nevada" => "NV",
      "new hampshire" => "NH",
      "new jersey" => "NJ",
      "new mexico" => "NM",
      "new york" => "NY",
      "north carolina" => "NC",
      "north dakota" => "ND",
      "northern mariana islands" => "MP",
      "ohio" => "OH",
      "oklahoma" => "OK",
      "oregon" => "OR",
      "palau" => "PW",
      "pennsylvania" => "PA",
      "puerto rico" => "PR",
      "rhode island" => "RI",
      "south carolina" => "SC",
      "south dakota" => "SD",
      "tennessee" => "TN",
      "texas" => "TX",
      "utah" => "UT",
      "vermont" => "VT",
      "virgin islands" => "VI",
      "virginia" => "VA",
      "washington" => "WA",
      "west virginia" => "WV",
      "wisconsin" => "WI",
      "wyoming" => "WY"
    }

    STATE_NAMES = STATE_CODES.invert

    STATE_FIPS = {
      "01" => "AL",
      "02" => "AK",
      "04" => "AZ",
      "05" => "AR",
      "06" => "CA",
      "08" => "CO",
      "09" => "CT",
      "10" => "DE",
      "11" => "DC",
      "12" => "FL",
      "13" => "GA",
      "15" => "HI",
      "16" => "ID",
      "17" => "IL",
      "18" => "IN",
      "19" => "IA",
      "20" => "KS",
      "21" => "KY",
      "22" => "LA",
      "23" => "ME",
      "24" => "MD",
      "25" => "MA",
      "26" => "MI",
      "27" => "MN",
      "28" => "MS",
      "29" => "MO",
      "30" => "MT",
      "31" => "NE",
      "32" => "NV",
      "33" => "NH",
      "34" => "NJ",
      "35" => "NM",
      "36" => "NY",
      "37" => "NC",
      "38" => "ND",
      "39" => "OH",
      "40" => "OK",
      "41" => "OR",
      "42" => "PA",
      "44" => "RI",
      "45" => "SC",
      "46" => "SD",
      "47" => "TN",
      "48" => "TX",
      "49" => "UT",
      "50" => "VT",
      "51" => "VA",
      "53" => "WA",
      "54" => "WV",
      "55" => "WI",
      "56" => "WY",
      "72" => "PR",
      "78" => "VI"
    }

    FIPS_STATES = STATE_FIPS.invert

    NORMALIZE_MAP = {
      'prefix'  => DIRECTIONAL,
      'prefix1' => DIRECTIONAL,
      'prefix2' => DIRECTIONAL,
      'suffix'  => DIRECTIONAL,
      'suffix1' => DIRECTIONAL,
      'suffix2' => DIRECTIONAL,
      'street_type'  => STREET_TYPES,
      'street_type1' => STREET_TYPES,
      'street_type2' => STREET_TYPES,
      'state'   => STATE_CODES,
    }

    class << self
      attr_accessor(
        :street_type_regexp,
        :street_type_matches,
        :number_regexp,
        :fraction_regexp,
        :state_regexp,
        :city_and_state_regexp,
        :direct_regexp,
        :zip_regexp,
        :corner_regexp,
        :unit_regexp,
        :street_regexp,
        :place_regexp,
        :address_regexp,
        :informal_address_regexp,
        :dircode_regexp,
        :unit_prefix_numbered_regexp,
        :unit2_prefix_numbered_regexp,
        :unit_prefix_unnumbered_regexp,
        :unit_regexp,
        :sep_regexp,
        :sep_avoid_unit_regexp,
        :intersection_regexp
      )
    end

    self.street_type_matches = {}
    STREET_TYPES.each_pair { |type,abbrv|
      self.street_type_matches[abbrv] = /\b (?: #{abbrv}|#{Regexp.quote(type)} ) \b/ix
    }

    self.street_type_regexp = Regexp.new(STREET_TYPES_LIST.keys.join("|"), Regexp::IGNORECASE)
    self.fraction_regexp = /\d+\/\d+/
    self.state_regexp = Regexp.new(
      '\b' + STATE_CODES.flatten.map{ |code| Regexp.quote(code) }.join("|") + '\b',
      Regexp::IGNORECASE
    )
    self.direct_regexp = Regexp.new(
      (DIRECTIONAL.keys +
       DIRECTIONAL.values.sort { |a,b|
         b.length <=> a.length
       }.map { |c|
         f = c.gsub(/(\w)/, '\1.')
         [Regexp::quote(f), Regexp::quote(c)]
       }
      ).join("|"),
      Regexp::IGNORECASE
    )
    self.dircode_regexp = Regexp.new(DIRECTION_CODES.keys.join("|"), Regexp::IGNORECASE)
    self.zip_regexp     = /(?:(?<postal_code>\d{5})(?:-?(?<postal_code_ext>\d{4}))?)/
    self.corner_regexp  = /(?:\band\b|\bat\b|&|\@)/i

    # we don't include letters in the number regex because we want to
    # treat "42S" as "42 S" (42 South). For example,
    # Utah and Wisconsin have a more elaborate system of block numbering
    # http://en.wikipedia.org/wiki/House_number#Block_numbers
    self.number_regexp = /(?<number>\d+-?\d*)(?=\D)/ix

    # note that expressions like [^,]+ may scan more than you expect
    self.street_regexp = /
      (?:
        # special case for addresses like 100 South Street
        (?:(?<street> #{direct_regexp})\W+
           (?<street_type> #{street_type_regexp})\b
           (?:\s+(?<street_type_suffix>(?:\d{1,4}[A-Za-z]{0,2}|#{dircode_regexp})))?
        )
        |
        (?:(?<prefix> #{direct_regexp})\W+)?
        (?:
          (?<street> [^,]*\d)
          (?:[^\w,]* (?<suffix> #{direct_regexp})\b)
          |
          (?<street> [^,]+)
          (?:[^\w,]+(?<street_type> #{street_type_regexp})\b)
          (?:\s+(?<street_type_suffix>(?:\d{1,4}[A-Za-z]{0,2}|#{dircode_regexp})))?
          (?:[^\w,]+(?<suffix> #{direct_regexp})\b)?
          |
          (?<street> [^,]+?)
          (?:[^\w,]+(?<street_type> #{street_type_regexp})\b)?
          (?:\s+(?<street_type_suffix>(?:\d{1,4}[A-Za-z]{0,2}|#{dircode_regexp})))?
          (?:[^\w,]+(?<suffix> #{direct_regexp})\b)?
        )
      )
    /ix;

    # http://pe.usps.com/text/pub28/pub28c2_003.htm
    # TODO add support for those that don't require a number
    # TODO map to standard names/abbreviations
    self.unit_prefix_numbered_regexp = /
      (?<unit_prefix>
        su?i?te
        |p\W*[om]\W*(?:\.?\W*)?box
        |p\W*[om](?!\W*box)
        |pmb
        |(?:ap|dep)(?:ar)?t(?:me?nt)?
        |ro*m
        |flo*r?
        |uni?t
        |bu?i?ldi?n?g
        |ha?nga?r
        |lo?t
        |pier
        |slip
        |spa?ce?
        |stop
        |tra?i?le?r
        |box)(?![a-z])
    /ix;

    self.unit2_prefix_numbered_regexp = /
      (?<unit2_prefix>
        su?i?te
        |p\W*[om]\W*(?:\.?\W*)?box
        |p\W*[om](?!\W*box)
        |pmb
        |(?:ap|dep)(?:ar)?t(?:me?nt)?
        |ro*m
        |flo*r?
        |uni?t
        |bu?i?ldi?n?g
        |ha?nga?r
        |lo?t
        |pier
        |slip
        |spa?ce?
        |stop
        |tra?i?le?r
        |box)(?![a-z])
    /ix;

    self.unit_prefix_unnumbered_regexp = /
      (?<unit_prefix>
        ba?se?me?n?t
        |fro?nt
        |lo?bby
        |lowe?r
        |off?i?ce?
        |pe?n?t?ho?u?s?e?
        |rear
        |side
        |uppe?r
        )\b
    /ix;

    # Optionally allow two units (i.e. for addresses like this: 10 MAIN ST STE 11 PMB 234)
    self.unit_regexp = /
      (?:
          (?: (?:#{unit_prefix_numbered_regexp} \W*)
              | (?<unit_prefix> \#)\W*
          )
          (?<unit> [\w-]+)
          (?:\s+
            (?:
                (?: (?:#{unit2_prefix_numbered_regexp} \W*)
                    | (?<unit2_prefix> \#)\W*
                )
                (?<unit2> [\w-]+)
            )
          )?
      )
      |
      (?:#{unit_prefix_unnumbered_regexp}
          (?:\s+
            (?:
                (?: (?:#{unit2_prefix_numbered_regexp} \W*)
                    | (?<unit2_prefix> \#)\W*
                )
                (?<unit2> [\w-]+)
            )
          )?
      )
    /ix;

    self.city_and_state_regexp = /
      (?:
          (?<city> [^\d,]+?)\W+
          (?<state> #{state_regexp})\b
      )
    /ix;

    self.place_regexp = /
      (?:#{city_and_state_regexp}\W*)? (?:#{zip_regexp})?
    /ix;

    self.address_regexp = /
      \A
      [^\w\x23]*    # skip non-word chars except # (eg unit)
      #{number_regexp} \W*
      (?:#{fraction_regexp}\W*)?
      #{street_regexp}\W+
      (?:#{unit_regexp}\W+)?
      #{place_regexp}
      \W*         # require on non-word chars at end
      \z           # right up to end of string
    /ix;

    self.sep_regexp = /(?:\W+|\Z)/;
    self.sep_avoid_unit_regexp = /(?:[^\#\w]+|\Z)/;

    self.informal_address_regexp = /
      \A
      \s*         # skip leading whitespace
      (?:#{unit_regexp} #{sep_regexp})?
      (?:#{number_regexp})? \W*
      (?:#{fraction_regexp} \W*)?
      #{street_regexp} #{sep_avoid_unit_regexp}
      (?:#{unit_regexp} #{sep_regexp})?
      (?:#{place_regexp})?
      # don't require match to reach end of string
    /ix;

    self.intersection_regexp = /\A\W*
      #{street_regexp}\W*?

      \s+#{corner_regexp}\s+

#          (?{ exists $_{$_} and $_{$_.1} = delete $_{$_} for (qw{prefix street type suffix})})
      #{street_regexp}\W+
#          (?{ exists $_{$_} and $_{$_.2} = delete $_{$_} for (qw{prefix street type suffix})})

      #{place_regexp}
      \W*\z
    /ix;

    class << self
      def parse(location, args={})
        if( corner_regexp.match(location) )
          return parse_intersection(location, args)
        else
          return parse_address(location, args) || parse_informal_address(location, args)
        end
      end

      def parse_address(address, args={})
        return unless match = address_regexp.match(address)

        to_address( match_to_hash(match), args )
      end

      def parse_informal_address(address, args={})
        # Special case: only unit prefix and unit (using the existing unit_regexp)
        if address.strip =~ /^#{unit_regexp}\s*$/i
          m = Regexp.last_match
          unit_prefix = m[:unit_prefix].strip.gsub(/[^\w\s\-\#\&']/, '').split.map(&:capitalize).join(' ')
          result_args = { unit_prefix: unit_prefix, unit: m[:unit] }
          
          # Handle second unit if present
          if m[:unit2_prefix] && m[:unit2]
            unit2_prefix = m[:unit2_prefix].strip.gsub(/[^\w\s\-\#\&']/, '').split.map(&:capitalize).join(' ')
            result_args[:unit2_prefix] = unit2_prefix
            result_args[:unit2] = m[:unit2]
          end
          
          return StreetAddress::US::Address.new(result_args)
        end
        return unless match = informal_address_regexp.match(address)
        to_address( match_to_hash(match), args )
      end

      def parse_intersection(intersection, args)
        return unless match = intersection_regexp.match(intersection)

        hash = match_to_hash(match)

        streets = intersection_regexp.named_captures["street"].map { |pos|
          match[pos.to_i]
        }.select { |v| v }
        hash["street"]  = streets[0] if streets[0]
        hash["street2"] = streets[1] if streets[1]

        street_types = intersection_regexp.named_captures["street_type"].map { |pos|
          match[pos.to_i]
        }.select { |v| v }
        hash["street_type"]  = street_types[0] if street_types[0]
        hash["street_type2"] = street_types[1] if street_types[1]

        if(
          hash["street_type"] &&
          (
            !hash["street_type2"] ||
            (hash["street_type"] == hash["street_type2"])
          )
        )
          type = hash["street_type"].clone
          if( type.gsub!(/s\W*$/i, '') && /\A#{street_type_regexp}\z/i =~ type )
            hash["street_type"] = hash["street_type2"] = type
          end
        end

        to_address( hash, args )
      end

      private
        def match_to_hash(match)
          hash = {}
          match.names.each { |name| hash[name] = match[name] if match[name] }
          return hash
        end

        def to_address(input, args)
          # strip off some punctuation and whitespace
          input.values.each { |string|
            string.strip!
            string.gsub!(/[^\w\s\-\#\&']/, '')
          }

          input['redundant_street_type'] = false
          if( input['street'] && !input['street_type'] )
            match = street_regexp.match(input['street'])
            input['street_type'] = match['street_type']
          input['redundant_street_type'] = true
          end

          NORMALIZE_MAP.each_pair { |key, map|
            next unless input[key]
            mapping = map[input[key].downcase]
            input[key] = mapping if mapping
          }

          if( args[:avoid_redundant_street_type] )
            ['', '1', '2'].each { |suffix|
              street = input['street'      + suffix];
              type   = input['street_type' + suffix];
              next if !street || !type

              type_regexp = street_type_matches[type.downcase] # || fail "No STREET_TYPE_MATCH for #{type}"
              input.delete('street_type' + suffix) if type_regexp.match(street)
            }
          end

          # attempt to expand directional prefixes on place names
          if( input['city'] )
            input['city'].gsub!(/^(#{dircode_regexp})\s+(?=\S)/) { |match|
              DIRECTION_CODES[match[0].upcase] + ' '
            }
          end

          %w(street street_type street2 street_type2 city unit_prefix).each do |k|
            input[k] = input[k].downcase.gsub(/\b\w/) { |match| match.upcase } if input[k]
          end

          return StreetAddress::US::Address.new( input )
        end
    end

    class Address
      attr_accessor(
        :number,
        :street,
        :street_type,
        :street_type_suffix,
        :unit,
        :unit_prefix,
        :unit2,
        :unit2_prefix,
        :suffix,
        :prefix,
        :city,
        :state,
        :postal_code,
        :postal_code_ext,
        :street2,
        :street_type2,
        :suffix2,
        :prefix2,
        :redundant_street_type
      )

      def initialize(args)
        args.each do |attr, val|
          public_send("#{attr}=", val)
        end
      end


      def full_postal_code
        return nil unless self.postal_code
        self.postal_code_ext ? "#{postal_code}-#{postal_code_ext}" : self.postal_code
      end


      def state_fips
        StreetAddress::US::FIPS_STATES[state]
      end


      def state_name
        name = StreetAddress::US::STATE_NAMES[state] and name.capitalize
      end


      def intersection?
        !street2.nil?
      end


      def line1(s = "")
        parts = []
        if intersection?
          parts << prefix       if prefix
          parts << street
          parts << street_type  if street_type
          parts << street_type_suffix if street_type_suffix
          parts << suffix       if suffix
          parts << 'and'
          parts << prefix2      if prefix2
          parts << street2
          parts << street_type2 if street_type2
          parts << suffix2      if suffix2
        else
          parts << number
          parts << prefix if prefix
          parts << street if street
          parts << street_type if street_type && !redundant_street_type
          parts << street_type_suffix if street_type_suffix && !redundant_street_type
          parts << suffix if suffix
          parts << unit_prefix if unit_prefix
          #follow guidelines: http://pe.usps.gov/cpim/ftp/pubs/Pub28/pub28.pdf pg28
          parts << (unit_prefix ? unit : "\# #{unit}") if unit
          parts << unit2_prefix if unit2_prefix
          parts << (unit2_prefix ? unit2 : "\# #{unit2}") if unit2
        end
        s + parts.join(' ').strip
      end

      def line2(s = "")
        parts = []
        parts << city  if city
        parts << state if state
        s = s + parts.join(', ')
        if postal_code
          s << " #{postal_code}"
          s << "-#{postal_code_ext}" if postal_code_ext
        end
        s.strip
      end


      def to_s(format = :default)
        s = ""
        case format
        when :line1
          s << line1(s)
        when :line2
          s << line2(s)
        else
          s << [line1, line2].select{ |l| !l.empty? }.join(', ')
        end
        s
      end


      def to_h
        self.instance_variables.each_with_object({}) do |var_name, hash|
          var_value = self.instance_variable_get(var_name)
          hash_name = var_name[1..-1].to_sym
          hash[hash_name] = var_value
        end
      end

      def ==(other)
        to_s == other.to_s
      end
    end
  end
end
