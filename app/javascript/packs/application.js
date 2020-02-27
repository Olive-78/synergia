require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

import "bootstrap";

import { ChangeFormatChoice } from '../components/creneaux_dispo';
import { submit } from '../components/submitform';

ChangeFormatChoice();
submit();
