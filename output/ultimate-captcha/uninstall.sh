#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bup_options'
wp option delete 'ultimatecaptcha_options'
wp option delete 'ultimatecaptcha_profile_fields'
wp option delete 'ultimatecaptcha_c_key'
wp option delete 'ultimatecaptcha_pro_active'
wp option delete 'ultimatecaptcha_ini_setup'
wp option delete 'ultimatecaptcha_my_account_page'
wp option delete 'ultimatecaptcharoaw_aweber_list'
wp option delete 'ucaptcha_plugin_do_activation_redirect'
wp option delete 'ucaptcha_ini_setup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_pic'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_pic'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_pic'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_pic'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_profile_bg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_profile_bg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_profile_bg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_profile_bg'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bup_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bup_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bup_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bup_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bup_summary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bup_summary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bup_summary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bup_summary'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bup_mailchimp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bup_mailchimp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bup_mailchimp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bup_mailchimp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ultimatecaptcha_user_registered_ip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ultimatecaptcha_user_registered_ip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ultimatecaptcha_user_registered_ip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ultimatecaptcha_user_registered_ip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ultimatecaptcha_ultra_very_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ultimatecaptcha_ultra_very_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ultimatecaptcha_ultra_very_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ultimatecaptcha_ultra_very_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ultimatecaptcha_aweber'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ultimatecaptcha_aweber'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ultimatecaptcha_aweber'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ultimatecaptcha_aweber'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ultimatecaptcha_account_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ultimatecaptcha_account_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ultimatecaptcha_account_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ultimatecaptcha_account_status'"
