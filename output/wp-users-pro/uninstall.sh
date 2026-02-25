#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpuserspro_c_key'
wp option delete 'wpuserspro_c_expiration'
wp option delete 'wpuserspro_profile_fields'
wp option delete 'wpuserspro_options'
wp option delete 'wpuserspro_pro_active'
wp option delete 'wpuserspro_rate_message'
wp option delete 'wpuserspro_my_account_page'
wp option delete 'wpuserspro_ini_setup'
wp option delete 'wpuserspro_auto_page_creation'
wp option delete 'bup_my_account_page'
wp option delete 'wpuserspro_aweber_list'
wp option delete 'wpuserspro_plugin_do_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uultra_protect_logged_in'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uultra_protect_logged_in'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uultra_protect_logged_in'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uultra_protect_logged_in'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ccap'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ccap'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ccap'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ccap'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpuserspro_user_registered_ip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpuserspro_user_registered_ip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpuserspro_user_registered_ip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpuserspro_user_registered_ip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpuserspro_is_client'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpuserspro_is_client'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpuserspro_is_client'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpuserspro_is_client'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpuserspro_ultra_very_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpuserspro_ultra_very_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpuserspro_ultra_very_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpuserspro_ultra_very_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpuserspro_aweber'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpuserspro_aweber'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpuserspro_aweber'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpuserspro_aweber'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpuserspro_account_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpuserspro_account_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpuserspro_account_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpuserspro_account_status'"
