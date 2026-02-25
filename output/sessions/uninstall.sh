#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pose_plugin_advanced_buffer_limit'
wp option delete 'pose_plugin_advanced_zk_tsize'
wp option delete 'pose_plugin_advanced_zk_semaphore'
wp option delete 'pose_plugin_advanced_zk_cycle'
wp option delete 'pose_plugin_options_logger'
wp option delete 'pose_plugin_options_podd'
wp option delete 'pose_plugin_options_geoip'
wp option delete 'pose_plugin_options_usecdn'
wp option delete 'pose_plugin_options_nag'
wp option delete 'pose_plugin_messages_fallback'
wp option delete 'pose_plugin_messages_blocked_message'
wp option delete 'pose_plugin_messages_bad_ip_message'
wp option delete 'pose_plugin_features_rolemode'
wp option delete 'pose_plugin_features_forceip'
wp option delete 'pose_plugin_features_followip'
wp option delete 'pose_plugin_features_killonreset'
wp option delete 'pose_plugin_features_analytics'
wp option delete 'pose_plugin_features_history'
wp option delete 'pose_plugin_features_metrics'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pose_plugin_roles_block_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pose_plugin_roles_maxip_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pose_plugin_roles_limit_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pose_plugin_roles_method_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pose_plugin_roles_idle_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pose_plugin_roles_cookie-ttl_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pose_plugin_roles_cookie-rttl_%'"
wp option delete 'auto_update_plugins'

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'session_tokens'"
