#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'crfw_editable_custom_fields_on_user_profile'
wp option delete 'crfw_custom_fields_registered'
wp option delete 'crfw_enable_custom_fields_module'
wp option delete 'crfw_enable_custom_fields_on_new_reg'
wp option delete 'crfw_enable_custom_fields_on_account_page'
wp option delete 'crfw_enable_custom_fields_editing_on_account_detail'
wp option delete 'crfw_enable_custom_fields_on_checkout_page'
wp option delete 'crfw_google_captcha_enable_wp_register'
wp option delete 'crfw_google_captcha_enable_my_account'
wp option delete 'crfw_google_captcha_settings_site_key'
wp option delete 'crfw_google_captcha_settings_secret_key'
wp option delete 'option_image'
wp option delete 'crfw_google_captcha_enable'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'crfw_custom_field_data_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'crfw_custom_field_data_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'crfw_custom_field_data_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'crfw_custom_field_data_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crfw_custom_reg_field_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crfw_custom_reg_field_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crfw_custom_reg_field_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crfw_custom_reg_field_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crfw_custom_field_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crfw_custom_field_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crfw_custom_field_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crfw_custom_field_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crfw_custom_field_conditional_rules'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crfw_custom_field_conditional_rules'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crfw_custom_field_conditional_rules'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crfw_custom_field_conditional_rules'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crfw_custom_field_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crfw_custom_field_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crfw_custom_field_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crfw_custom_field_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crfw_custom_field_placeholder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crfw_custom_field_placeholder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crfw_custom_field_placeholder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crfw_custom_field_placeholder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crfw_custom_field_required'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crfw_custom_field_required'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crfw_custom_field_required'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crfw_custom_field_required'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crfw_custom_field_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crfw_custom_field_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crfw_custom_field_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crfw_custom_field_priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crfw_custom_field_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crfw_custom_field_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crfw_custom_field_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crfw_custom_field_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crfw_html_text_area'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crfw_html_text_area'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crfw_html_text_area'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crfw_html_text_area'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crfw_custom_field_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crfw_custom_field_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crfw_custom_field_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crfw_custom_field_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crfw_custom_field_classes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crfw_custom_field_classes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crfw_custom_field_classes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crfw_custom_field_classes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crfw_field_option_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crfw_field_option_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crfw_field_option_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crfw_field_option_value'"
