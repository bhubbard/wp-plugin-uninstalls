#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'voizee_api_key'
wp option delete 'voizee_widget_script'
wp option delete 'voizee_api_dashboard_enabled'
wp option delete 'voizee_api_cf7_enabled'
wp option delete 'voizee_api_gf_enabled'
wp option delete 'voizee_api_cf7_logs'
wp option delete 'voizee_api_gf_logs'

# Delete Transients
wp transient delete 'voizee_stats_cache'

