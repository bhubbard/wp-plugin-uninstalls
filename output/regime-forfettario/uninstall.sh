#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'RFWC_cassa_previdenziale'
wp option delete 'RFWC_cassa_previdenziale_tipologia'
wp option delete 'RFWC_cassa_previdenziale_percentuale'

