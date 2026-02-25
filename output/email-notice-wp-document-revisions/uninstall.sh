#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpdr_en_db_version'
wp option delete 'wpdr_en_set_email_from'
wp option delete 'wpdr_en_set_email_from_address'
wp option delete 'wpdr_en_set_notification_mode'
wp option delete 'wpdr_en_set_notification_about'
wp option delete 'wpdr_en_set_subject'
wp option delete 'wpdr_en_set_content'
wp option delete 'wpdr_en_set_exttext'
wp option delete 'wpdr_en_set_ext_attach'
wp option delete 'wpdr_en_set_repeat'
wp option delete 'wpdr_en_set_notification_log'

# Delete Transients
wp transient delete 'auto_notification_result'
wp transient delete 'auto_notification_message'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_del_%' OR option_name LIKE '_site_transient_del_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpdr_en_user_notification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpdr_en_user_notification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpdr_en_user_notification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpdr_en_user_notification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpdr_en_user_attachment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpdr_en_user_attachment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpdr_en_user_attachment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpdr_en_user_attachment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rvy_base_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rvy_base_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rvy_base_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rvy_base_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpdr_en_notification_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpdr_en_notification_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpdr_en_notification_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpdr_en_notification_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpdr_en_ext_notice_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpdr_en_ext_notice_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpdr_en_ext_notice_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpdr_en_ext_notice_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpdr_en_addressees'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpdr_en_addressees'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpdr_en_addressees'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpdr_en_addressees'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpdr_en_tm'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpdr_en_tm'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpdr_en_tm'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpdr_en_tm'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpdr_en_attach'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpdr_en_attach'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpdr_en_attach'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpdr_en_attach'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpdr_en_pause'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpdr_en_pause'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpdr_en_pause'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpdr_en_pause'"
