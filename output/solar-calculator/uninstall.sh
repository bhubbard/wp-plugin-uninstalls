#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'solar_calc_rating_notice_shown'
wp option delete 'solar_calc_install_date'
wp option delete 'solarrechner_einspeiseverguetung'
wp option delete 'solarrechner_qmkwp'
wp option delete 'solarrechner_degradation'
wp option delete 'solarrechner_kosten_kwp'
wp option delete 'solarrechner_spezifischerErtrag'
wp option delete 'solarrechner_wartung'
wp option delete 'solarrechner_batteriekosten'
wp option delete 'solarrechner_strompreis_steigerung'
wp option delete 'solarrechner_co2_faktor'
wp option delete 'solarrechner_autarkie_begrenzung'
wp option delete 'solarrechner_eigenverbrauch_prozent'
wp option delete 'solarrechner_leistungs_begrenzung'
wp option delete 'solarrechner_version'

