#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'emtmpl_admin_bar_stt'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wp_reviewed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_start_use'"
wp option delete 'villatheme_hide_admin_toolbar'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%'"

# Delete Transients
wp transient delete 'villatheme_call'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_hide_notices' OR option_name LIKE '_site_transient_%_hide_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_villatheme_hide_notices_%' OR option_name LIKE '_site_transient_villatheme_hide_notices_%'"
wp transient delete 'villatheme_notices'
wp transient delete 'villatheme_called'
wp transient delete 'villatheme_ads'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'emtmpl_settings_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'emtmpl_settings_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'emtmpl_settings_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'emtmpl_settings_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'emtmpl_email_structure'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'emtmpl_email_structure'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'emtmpl_email_structure'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'emtmpl_email_structure'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'emtmpl_enable_img_for_default_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'emtmpl_enable_img_for_default_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'emtmpl_enable_img_for_default_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'emtmpl_enable_img_for_default_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'emtmpl_img_size_for_default_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'emtmpl_img_size_for_default_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'emtmpl_img_size_for_default_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'emtmpl_img_size_for_default_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'emtmpl_custom_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'emtmpl_custom_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'emtmpl_custom_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'emtmpl_custom_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'emtmpl_settings_direction'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'emtmpl_settings_direction'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'emtmpl_settings_direction'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'emtmpl_settings_direction'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'emtmpl_admin_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'emtmpl_admin_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'emtmpl_admin_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'emtmpl_admin_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'emtmpl_settings_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'emtmpl_settings_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'emtmpl_settings_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'emtmpl_settings_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'emtmpl_settings_countries'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'emtmpl_settings_countries'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'emtmpl_settings_countries'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'emtmpl_settings_countries'"
