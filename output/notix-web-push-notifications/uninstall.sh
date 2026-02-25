#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'notix_error_notices'
wp option delete 'notix_tag_notify_feature_enabled_setting'
wp option delete 'notix_auto_send_feature_enabled_setting'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'notix_push_sended'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'notix_push_sended'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'notix_push_sended'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'notix_push_sended'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'notix_send_checkbox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'notix_send_checkbox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'notix_send_checkbox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'notix_send_checkbox'"
