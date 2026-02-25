#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'apg_city_settings'
wp option delete 'apg_city_last_import'
wp option delete 'apg_city_rows'
wp option delete 'apg_city_last_hash'
wp option delete 'apg_city_import_state'

# Delete Transients
wp transient delete 'apg_city_plugin'
wp transient delete 'apg_city_seed_scheduled'
wp transient delete 'apg_city_import_lock'

