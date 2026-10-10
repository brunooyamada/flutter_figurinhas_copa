import 'package:flutter/widgets.dart';
import 'package:material_ui/material_ui.dart';
import 'package:wc_2026_mobile/domain/models/team/team.dart';
import 'package:wc_2026_mobile/ui/album/widgets/filter_tabs.dart';
import 'package:wc_2026_mobile/ui/album/widgets/header.dart';
import 'package:wc_2026_mobile/ui/album/widgets/team_strip.dart';

class const AlbumScreen({super.key}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(onBack: () {}),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FilterTabs(
                total: 10,
                missing: 20,
                repeated: 30,
                selected: null,
                onSelected: (value) {
                  debugPrint('Alterando a tab $value');
                },
              ),
            ),
            TeamStrip(
              teams: [
                Team(
                  code: 'ALG',
                  name: 'Algeria',
                  flagUrl: '/flags/alg.png',
                  primaryColor: 0xff007A3D,
                ),
                Team(
                  code: 'ARG',
                  name: 'Argentina',
                  flagUrl: '/flags/arg.png',
                  primaryColor: 0xff6CACE4,
                ),
                Team(
                  code: 'AUS',
                  name: 'Australia',
                  flagUrl: '/flags/aus.png',
                  primaryColor: 0xffFFCD00,
                ),
                Team(
                  code: 'AUT',
                  name: 'Austria',
                  flagUrl: '/flags/aut.png',
                  primaryColor: 0xffEF3340,
                ),
                Team(
                  code: 'BEL',
                  name: 'Belgium',
                  flagUrl: '/flags/bel.png',
                  primaryColor: 0xffED2939,
                ),
                Team(
                  code: 'BRA',
                  name: 'Brazil',
                  flagUrl: '/flags/bra.png',
                  primaryColor: 0xffFFDF00,
                ),
                Team(
                  code: 'CMR',
                  name: 'Cameroon',
                  flagUrl: '/flags/cmr.png',
                  primaryColor: 0xff007A5E,
                ),
                Team(
                  code: 'CAN',
                  name: 'Canada',
                  flagUrl: '/flags/can.png',
                  primaryColor: 0xffD52B1E,
                ),
                Team(
                  code: 'CHI',
                  name: 'Chile',
                  flagUrl: '/flags/chi.png',
                  primaryColor: 0xffE4002B,
                ),
                Team(
                  code: 'COL',
                  name: 'Colombia',
                  flagUrl: '/flags/col.png',
                  primaryColor: 0xffFCD116,
                ),
                Team(
                  code: 'CRC',
                  name: 'Costa Rica',
                  flagUrl: '/flags/crc.png',
                  primaryColor: 0xffD90429,
                ),
                Team(
                  code: 'CRO',
                  name: 'Croatia',
                  flagUrl: '/flags/cro.png',
                  primaryColor: 0xffFF0000,
                ),
                Team(
                  code: 'DEN',
                  name: 'Denmark',
                  flagUrl: '/flags/den.png',
                  primaryColor: 0xffC8102E,
                ),
                Team(
                  code: 'ECU',
                  name: 'Ecuador',
                  flagUrl: '/flags/ecu.png',
                  primaryColor: 0xffFFDD00,
                ),
                Team(
                  code: 'EGY',
                  name: 'Egypt',
                  flagUrl: '/flags/egy.png',
                  primaryColor: 0xffCF0921,
                ),
                Team(
                  code: 'ENG',
                  name: 'England',
                  flagUrl: '/flags/eng.png',
                  primaryColor: 0xffCE1124,
                ),
                Team(
                  code: 'FRA',
                  name: 'France',
                  flagUrl: '/flags/fra.png',
                  primaryColor: 0xff002395,
                ),
                Team(
                  code: 'GER',
                  name: 'Germany',
                  flagUrl: '/flags/ger.png',
                  primaryColor: 0xff000000,
                ),
                Team(
                  code: 'GHA',
                  name: 'Ghana',
                  flagUrl: '/flags/gha.png',
                  primaryColor: 0xff006B3F,
                ),
                Team(
                  code: 'IRN',
                  name: 'Iran',
                  flagUrl: '/flags/irn.png',
                  primaryColor: 0xff239F40,
                ),
                Team(
                  code: 'ITA',
                  name: 'Italy',
                  flagUrl: '/flags/ita.png',
                  primaryColor: 0xff0066B2,
                ),
                Team(
                  code: 'CIV',
                  name: 'Ivory Coast',
                  flagUrl: '/flags/civ.png',
                  primaryColor: 0xffFF8200,
                ),
                Team(
                  code: 'JAM',
                  name: 'Jamaica',
                  flagUrl: '/flags/jam.png',
                  primaryColor: 0xffFFB81C,
                ),
                Team(
                  code: 'JPN',
                  name: 'Japan',
                  flagUrl: '/flags/jpn.png',
                  primaryColor: 0xff0B2B67,
                ),
                Team(
                  code: 'MEX',
                  name: 'Mexico',
                  flagUrl: '/flags/mex.png',
                  primaryColor: 0xff006847,
                ),
                Team(
                  code: 'MAR',
                  name: 'Morocco',
                  flagUrl: '/flags/mar.png',
                  primaryColor: 0xffC1272D,
                ),
                Team(
                  code: 'NED',
                  name: 'Netherlands',
                  flagUrl: '/flags/ned.png',
                  primaryColor: 0xffF36C21,
                ),
                Team(
                  code: 'NGA',
                  name: 'Nigeria',
                  flagUrl: '/flags/nga.png',
                  primaryColor: 0xff008751,
                ),
                Team(
                  code: 'NOR',
                  name: 'Norway',
                  flagUrl: '/flags/nor.png',
                  primaryColor: 0xffBA0C2F,
                ),
                Team(
                  code: 'PAN',
                  name: 'Panama',
                  flagUrl: '/flags/pan.png',
                  primaryColor: 0xffDA121A,
                ),
                Team(
                  code: 'PAR',
                  name: 'Paraguay',
                  flagUrl: '/flags/par.png',
                  primaryColor: 0xffCE1126,
                ),
                Team(
                  code: 'PER',
                  name: 'Peru',
                  flagUrl: '/flags/per.png',
                  primaryColor: 0xffD91023,
                ),
                Team(
                  code: 'POL',
                  name: 'Poland',
                  flagUrl: '/flags/pol.png',
                  primaryColor: 0xffDC143C,
                ),
                Team(
                  code: 'POR',
                  name: 'Portugal',
                  flagUrl: '/flags/por.png',
                  primaryColor: 0xffDA291C,
                ),
                Team(
                  code: 'QAT',
                  name: 'Qatar',
                  flagUrl: '/flags/qat.png',
                  primaryColor: 0xff8A1538,
                ),
                Team(
                  code: 'KSA',
                  name: 'Saudi Arabia',
                  flagUrl: '/flags/ksa.png',
                  primaryColor: 0xff006C35,
                ),
                Team(
                  code: 'SCO',
                  name: 'Scotland',
                  flagUrl: '/flags/sco.png',
                  primaryColor: 0xff0065BD,
                ),
                Team(
                  code: 'SEN',
                  name: 'Senegal',
                  flagUrl: '/flags/sen.png',
                  primaryColor: 0xff00853F,
                ),
                Team(
                  code: 'SRB',
                  name: 'Serbia',
                  flagUrl: '/flags/srb.png',
                  primaryColor: 0xffC6363C,
                ),
                Team(
                  code: 'RSA',
                  name: 'South Africa',
                  flagUrl: '/flags/rsa.png',
                  primaryColor: 0xffFFB612,
                ),
                Team(
                  code: 'KOR',
                  name: 'South Korea',
                  flagUrl: '/flags/kor.png',
                  primaryColor: 0xffCD2E3A,
                ),
                Team(
                  code: 'ESP',
                  name: 'Spain',
                  flagUrl: '/flags/esp.png',
                  primaryColor: 0xffC60B1E,
                ),
                Team(
                  code: 'SWE',
                  name: 'Sweden',
                  flagUrl: '/flags/swe.png',
                  primaryColor: 0xffFECC02,
                ),
                Team(
                  code: 'SUI',
                  name: 'Switzerland',
                  flagUrl: '/flags/sui.png',
                  primaryColor: 0xffD8232A,
                ),
                Team(
                  code: 'TUN',
                  name: 'Tunisia',
                  flagUrl: '/flags/tun.png',
                  primaryColor: 0xffE70013,
                ),
                Team(
                  code: 'USA',
                  name: 'United States',
                  flagUrl: '/flags/usa.png',
                  primaryColor: 0xff002868,
                ),
                Team(
                  code: 'URU',
                  name: 'Uruguay',
                  flagUrl: '/flags/uru.png',
                  primaryColor: 0xff4C9BD1,
                ),
                Team(
                  code: 'WAL',
                  name: 'Wales',
                  flagUrl: '/flags/wal.png',
                  primaryColor: 0xffD50032,
                ),
              ],
              selected: 'BRA',
              onSelected: (_) {},
            ),
          ],
        ),
      ),
    );
  }
}
