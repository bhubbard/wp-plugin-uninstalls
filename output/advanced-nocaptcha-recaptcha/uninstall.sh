#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%update_notice_needed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%update_redirection_needed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%owner_notice_dismissed'"
wp option delete 'c4wp_v3_failover_available'
wp option delete 'c4wp_admin_options'
wp option delete 'disallowed_keys'
wp option delete 'c4wp_network_notice_dismissed'
wp option delete 'c4wp_update_redirection_needed'
wp option delete 'c4wp_70_upgrade_complete'
wp option delete 'anr_admin_options'
wp option delete 'active_sitewide_plugins'
wp option delete 'c4wp_redirect_after_activation'
wp option delete 'fs_c4wp'

# Delete Transients
wp transient delete 'c4wp_admin_options_errors'
wp transient delete 'c4wp_config_file_hash'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nocaptcha_plugin_notice_ignore'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nocaptcha_plugin_notice_ignore'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nocaptcha_plugin_notice_ignore'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nocaptcha_plugin_notice_ignore'"
