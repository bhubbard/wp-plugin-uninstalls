#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'FWPN_secret_key'
wp option delete 'FWPN_server_url'
wp option delete 'fwpn_db_version'
wp option delete 'apiKey'
wp option delete 'authDomain'
wp option delete 'databaseURL'
wp option delete 'projectId'
wp option delete 'storageBucket'
wp option delete 'messagingSenderId'
wp option delete 'eww_epush'
wp option delete 'subscriber'
wp option delete 'default_post'
wp option delete 'subscriber_api'
wp option delete 'Serverkey'
wp option delete 'Notify_Title'
wp option delete 'Notify_logo'
wp option delete 'Notify_Thanks'
wp option delete 'Notify_Description'
wp option delete 'groupkey'
wp option delete 'groupname'
wp option delete 'post_list'
wp option delete 'sample_license_key'
wp option delete 'Custom_Notify_Title'
wp option delete 'Custom_Notify_Body'
wp option delete 'Custom_Notify_Link'
wp option delete 'Custom_Notify_logo'
wp option delete 'push_deactivated_on'
wp option delete 'push_activated_on'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'do_not_send_push_notifications_for_this_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'do_not_send_push_notifications_for_this_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'do_not_send_push_notifications_for_this_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'do_not_send_push_notifications_for_this_post'"
