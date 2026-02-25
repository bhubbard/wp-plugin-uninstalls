#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gglstpvrfctn_options'
wp option delete 'gglstpvrfctn_key'
wp option delete 'bstwbsftwppdtplgns_options'
wp option delete 'recently_activated'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'bws_plugins_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gglstpvrfctn_email_init_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gglstpvrfctn_email_init_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gglstpvrfctn_email_init_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gglstpvrfctn_email_init_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gglstpvrfctn_backup_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gglstpvrfctn_backup_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gglstpvrfctn_backup_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gglstpvrfctn_backup_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gglstpvrfctn_user_secret'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gglstpvrfctn_user_secret'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gglstpvrfctn_user_secret'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gglstpvrfctn_user_secret'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gglstpvrfctn_sms_check'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gglstpvrfctn_sms_check'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gglstpvrfctn_sms_check'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gglstpvrfctn_sms_check'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gglstpvrfctn_hide_profile_banner'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gglstpvrfctn_hide_profile_banner'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gglstpvrfctn_hide_profile_banner'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gglstpvrfctn_hide_profile_banner'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gglstpvrfctn_hide_settings_banner'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gglstpvrfctn_hide_settings_banner'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gglstpvrfctn_hide_settings_banner'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gglstpvrfctn_hide_settings_banner'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gglstpvrfctn_email_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gglstpvrfctn_email_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gglstpvrfctn_email_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gglstpvrfctn_email_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gglstpvrfctn_user_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gglstpvrfctn_user_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gglstpvrfctn_user_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gglstpvrfctn_user_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gglstpvrfctn_secret_question_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gglstpvrfctn_secret_question_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gglstpvrfctn_secret_question_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gglstpvrfctn_secret_question_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bws_affiliate_postbox_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bws_affiliate_postbox_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bws_affiliate_postbox_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bws_affiliate_postbox_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
