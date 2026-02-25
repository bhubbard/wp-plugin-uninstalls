#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'opcm_plugin_options_logger'
wp option delete 'opcm_plugin_options_adminbar'
wp option delete 'opcm_plugin_options_usecdn'
wp option delete 'opcm_plugin_options_nag'
wp option delete 'opcm_plugin_features_analytics'
wp option delete 'opcm_plugin_features_history'
wp option delete 'opcm_plugin_features_metrics'
wp option delete 'opcm_plugin_features_reset_frequency'
wp option delete 'opcm_plugin_features_warmup'
wp option delete 'auto_update_plugins'

# Delete Transients
wp transient delete 'update_plugins'

