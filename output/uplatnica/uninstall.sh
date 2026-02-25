#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'valuta'
wp option delete 'qr_size'
wp option delete 'platilac'
wp option delete 'naziv_primaoca'
wp option delete 'svrha_uplate'
wp option delete 'sifra_placanja'
wp option delete 'broj_racuna_prefix'
wp option delete 'broj_racuna'
wp option delete 'broj_racuna_sufix'
wp option delete 'iznos'
wp option delete 'model'
wp option delete 'poziv_broj'
wp option delete 'qr'

