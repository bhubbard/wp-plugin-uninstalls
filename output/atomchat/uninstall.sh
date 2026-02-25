#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'show_name_in_chat'
wp option delete 'show_docked_layout_on_all_pages'
wp option delete 'atomchat_show_friends'
wp option delete 'atomchat_bp_group_sync'
wp option delete 'atomchat_auth_key'
wp option delete 'atomchat_api_key'
wp option delete 'atomchat_enable_mycred'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'atomchat_%'"
wp option delete 'atomchat_clientid'
wp option delete 'atomchatintialaccess'
wp option delete 'atomchat_license_key'
wp option delete 'inbox_sync'
wp option delete 'hide_bar'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_messageCounter%' OR option_name LIKE '_site_transient_messageCounter%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_timer%' OR option_name LIKE '_site_transient_timer%'"

# Clear Cron Jobs
wp cron event delete 'atomchat_buddypress_groups_sync_scheduler'
wp cron event delete 'groups_group_create_complete'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
