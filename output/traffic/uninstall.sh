#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'traffic_plugin_options_favicons'
wp option delete 'traffic_plugin_options_geoip'
wp option delete 'traffic_plugin_options_logger'
wp option delete 'traffic_plugin_options_shmop'
wp option delete 'traffic_plugin_options_usecdn'
wp option delete 'traffic_plugin_options_nag'
wp option delete 'traffic_plugin_features_history'
wp option delete 'traffic_plugin_features_metrics'
wp option delete 'traffic_plugin_features_livelog'
wp option delete 'traffic_plugin_features_smart_filter'
wp option delete 'traffic_inbound_options_capture'
wp option delete 'traffic_inbound_options_level'
wp option delete 'traffic_inbound_options_cut_path'
wp option delete 'traffic_outbound_options_capture'
wp option delete 'traffic_outbound_options_level'
wp option delete 'traffic_outbound_options_cut_path'
wp option delete 'auto_update_plugins'

# Delete Transients
wp transient delete 'update_plugins'

