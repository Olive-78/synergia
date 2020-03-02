require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

import "bootstrap";
import swal from 'sweetalert';

import { ChangeFormatChoice } from '../components/creneaux_dispo';
import { submit } from '../components/submitform';
import { initMapbox } from '../plugins/init_mapbox';

initMapbox();
ChangeFormatChoice();
submit();

AOS.init();
