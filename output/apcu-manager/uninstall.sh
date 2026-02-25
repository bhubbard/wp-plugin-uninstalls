#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'apcm_plugin_options_logger'
wp option delete 'apcm_plugin_options_adminbar'
wp option delete 'apcm_plugin_options_usecdn'
wp option delete 'apcm_plugin_options_nag'
wp option delete 'apcm_plugin_features_earlyloading'
wp option delete 'apcm_plugin_features_gc'
wp option delete 'apcm_plugin_features_analytics'
wp option delete 'apcm_plugin_features_history'
wp option delete 'apcm_plugin_features_metrics'
wp option delete 'apcm_earlyloading'
wp option delete 'apcm_forceearlyloading'
wp option delete 'auto_update_plugins'

# Delete Transients
wp transient delete 'update_plugins'

