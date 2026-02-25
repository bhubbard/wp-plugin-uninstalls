#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'iplocator_plugin_options_override'
wp option delete 'iplocator_plugin_options_zlib'
wp option delete 'iplocator_plugin_features_autoupdate'
wp option delete 'iplocator_plugin_options_logger'
wp option delete 'iplocator_plugin_options_podd'
wp option delete 'iplocator_plugin_options_usecdn'
wp option delete 'iplocator_plugin_options_nag'
wp option delete 'iplocator_plugin_features_analytics'
wp option delete 'iplocator_plugin_features_history'
wp option delete 'iplocator_plugin_features_metrics'
wp option delete 'iplocator_plugin_features_shortcode'
wp option delete 'iplocator_plugin_features_css'
wp option delete 'auto_update_plugins'

# Delete Transients
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'
wp transient delete 'update_plugins'

