#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'viwec_email_default_setting'
wp option delete 'viwec_email_update_button'
wp option delete 'viwec_admin_bar_stt'
wp option delete 'viwec_emails_status'
wp option delete 'woocommerce_tax_display_cart'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wp_reviewed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_start_use'"
wp option delete 'villatheme_hide_admin_toolbar'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%'"
wp option delete 'woocommerce_email_from_address'
wp option delete 'woocommerce_tax_total_display'

# Delete Transients
wp transient delete 'villatheme_call'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_hide_notices' OR option_name LIKE '_site_transient_%_hide_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_villatheme_hide_notices_%' OR option_name LIKE '_site_transient_villatheme_hide_notices_%'"
wp transient delete 'villatheme_notices'
wp transient delete 'villatheme_called'
wp transient delete 'villatheme_ads'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'viwec_email_structure'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'viwec_email_structure'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'viwec_email_structure'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'viwec_email_structure'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'viwec_settings_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'viwec_settings_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'viwec_settings_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'viwec_settings_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'viwec_settings_direction'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'viwec_settings_direction'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'viwec_settings_direction'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'viwec_settings_direction'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'viwec_enable_img_for_default_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'viwec_enable_img_for_default_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'viwec_enable_img_for_default_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'viwec_enable_img_for_default_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'viwec_img_size_for_default_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'viwec_img_size_for_default_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'viwec_img_size_for_default_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'viwec_img_size_for_default_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'viwec_custom_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'viwec_custom_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'viwec_custom_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'viwec_custom_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'viwec_setting_rules'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'viwec_setting_rules'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'viwec_setting_rules'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'viwec_setting_rules'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'viwec_admin_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'viwec_admin_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'viwec_admin_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'viwec_admin_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'viwec_settings_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'viwec_settings_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'viwec_settings_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'viwec_settings_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'viwec_settings_countries'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'viwec_settings_countries'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'viwec_settings_countries'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'viwec_settings_countries'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'admin_coupons_enabled_for_vendor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'admin_coupons_enabled_for_vendor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'admin_coupons_enabled_for_vendor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'admin_coupons_enabled_for_vendor'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dokan_email_verification_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dokan_email_verification_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dokan_email_verification_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dokan_email_verification_key'"
