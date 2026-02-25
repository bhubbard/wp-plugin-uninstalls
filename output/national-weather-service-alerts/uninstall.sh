#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nws_alerts_version'
wp option delete 'nws_alerts_tables_built'
wp option delete 'nws_alerts_google_maps_api_key'
wp option delete 'nws_alerts_alerts_bar_enabled'
wp option delete 'nws_alerts_alerts_bar_zip'
wp option delete 'nws_alerts_alerts_bar_city'
wp option delete 'nws_alerts_alerts_bar_state'
wp option delete 'nws_alerts_alerts_bar_county'
wp option delete 'nws_alerts_alerts_bar_location_title'
wp option delete 'nws_alerts_alerts_bar_scope'
wp option delete 'nws_alerts_alerts_bar_limit'
wp option delete 'nws_alerts_alerts_bar_fix'

# Delete Transients
wp transient delete 'nws_alerts_populate_tables_args'
wp transient delete 'nws_alerts_populate_tables_current_file'
wp transient delete 'nws_alerts_populate_tables_current_part'

