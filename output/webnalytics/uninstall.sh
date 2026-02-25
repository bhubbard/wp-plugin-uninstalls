#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'webnalytics_v3_flow_last_run'
wp option delete 'webnalytics_v3_flow_last_error'
wp option delete 'webnalytics_v3_heatmap_last_ping'
wp option delete 'webnalytics_v3_last_rest_access'
wp option delete 'webnalytics_v3_version'
wp option delete 'webnalytics_v3_settings'
wp option delete 'webnalytics_v3_db_ver'
wp option delete 'webnalytics_v3_public_collector_key'
wp option delete 'webnalytics_v3_heatmap_last_click'

# Delete Transients
wp transient delete 'webnalytics_v3_flow_lock'

