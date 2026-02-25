#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'podd_plugin_options_favicons'
wp option delete 'podd_plugin_options_logger'
wp option delete 'podd_plugin_options_usecdn'
wp option delete 'podd_plugin_options_nag'
wp option delete 'podd_plugin_features_analytics'
wp option delete 'podd_plugin_features_history'
wp option delete 'podd_plugin_core_wp_is_mobile'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'podd_plugin_css_%'"
wp option delete 'podd_plugin_css_current'
wp option delete 'auto_update_plugins'

# Delete Transients
wp transient delete 'update_plugins'

