#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'push_notification_settings'
wp option delete 'push_notification_auth_settings'
wp option delete 'pn_website_token_ids'
wp option delete 'push_notification_details_settings'
wp option delete 'pwaforwp_settings'

# Delete Transients
wp transient delete 'push_notification_older_version'
wp transient delete 'push_notification_pro_checker'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pnwoo_notification_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pnwoo_notification_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pnwoo_notification_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pnwoo_notification_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'um_new_notifications'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'um_new_notifications'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'um_new_notifications'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'um_new_notifications'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pn_send_notification_on_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pn_send_notification_on_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pn_send_notification_on_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pn_send_notification_on_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_group_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_group_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_group_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_group_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'peepso_pn_notification_token_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'peepso_pn_notification_token_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'peepso_pn_notification_token_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'peepso_pn_notification_token_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'buddyboss_pn_notification_token_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'buddyboss_pn_notification_token_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'buddyboss_pn_notification_token_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'buddyboss_pn_notification_token_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gravity_pn_notification_token_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gravity_pn_notification_token_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gravity_pn_notification_token_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gravity_pn_notification_token_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fluent_community_pn_notification_token_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fluent_community_pn_notification_token_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fluent_community_pn_notification_token_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fluent_community_pn_notification_token_id'"
