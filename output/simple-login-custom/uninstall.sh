#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'customlogin_consumer_key'
wp option delete 'customlogin_consumer_secret'
wp option delete 'customlogin_siret_access_token'
wp option delete 'customlogin_siret_token_expiry'
wp option delete 'customlogin_verification_type'
wp option delete 'customlogin_duns_number'
wp option delete 'customlogin_form_max_width'
wp option delete 'customlogin_form_background_color'
wp option delete 'customlogin_form_text_color'
wp option delete 'customlogin_form_border_color'
wp option delete 'customlogin_form_border_width'
wp option delete 'customlogin_form_border_style'
wp option delete 'customlogin_form_border_padding'
wp option delete 'customlogin_link_color'
wp option delete 'customlogin_link_underline_style'
wp option delete 'customlogin_link_text_normal'
wp option delete 'customlogin_link_text'
wp option delete 'customlogin_show_buttons'
wp option delete 'customlogin_domain'
wp option delete 'customlogin_form_style'
wp option delete 'customlogin_logo_text'
wp option delete 'customlogin_desc_id'
wp option delete 'simple_editor_control_logins'

# Clear Cron Jobs
wp cron event delete 'customlogin_renew_siret_token'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'just_registered'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'just_registered'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'just_registered'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'just_registered'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'company_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'company_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'company_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'company_name'"
