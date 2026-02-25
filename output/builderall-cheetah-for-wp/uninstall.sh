#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_ba_cheetah_kit_fa_pro'
wp option delete '_ba_cheetah_enable_fa_pro'
wp option delete 'ba_cheetah_beta_updates'
wp option delete 'ba_cheetah_alpha_updates'
wp option delete '_ba_cheetah_access_token'
wp option delete '_ba_cheetah_site_id'
wp option delete '_ba_cheetah_pro_email'
wp option delete '_ba_cheetah_access'
wp option delete '_ba_cheetah_request_state'
wp option delete '_ba_cheetah_supercheckout_token'
wp option delete 'ba-cheetah-supercharge-enabled'
wp option delete 'ba_cheetah_account_connect_notification'
wp option delete 'ba_cheetah_recent_fonts'
wp option delete '_ba_cheetah_enabled_icons'
wp option delete '_ba_cheetah_settings'
wp option delete '_ba_cheetah_color_presets'
wp option delete '_ba_cheetah_services'
wp option delete '_ba_cheetah_enabled_modules'
wp option delete '_ba_cheetah_enabled_templates'
wp option delete '_ba_cheetah_templates_override'
wp option delete '_ba_cheetah_templates_override_rows'
wp option delete '_ba_cheetah_templates_override_columns'
wp option delete '_ba_cheetah_templates_override_modules'
wp option delete '_ba_cheetah_post_types'
wp option delete '_ba_cheetah_general_settings'
wp option delete '_ba_cheetah_watermark'
wp option delete '_ba_cheetah_branding'
wp option delete '_ba_cheetah_branding_icon'
wp option delete '_ba_cheetah_theme_branding'
wp option delete '_ba_cheetah_user_access'
wp option delete '_ba_cheetah_help_button'
wp option delete '_ba_cheetah_supercharge_enabled'
wp option delete '_ba_cheetah_recaptcha_sitekey'
wp option delete '_ba_cheetah_recaptcha_secretkey'
wp option delete '_ba_cheetah_facebook_pixel_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp option delete '_transient_timeout_ba_cheetah_debug_mode'
wp option delete 'ba_cheetah_usage_enabled'

# Delete Transients
wp transient delete 'ba_cheetah_debug_mode'
wp transient delete '_ba_cheetah_activation_admin_notice'
wp transient delete 'ba_templates_cached'

# Clear Cron Jobs
wp cron event delete 'ba_cheetah_pro_user'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ba_cheetah_data_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ba_cheetah_data_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ba_cheetah_data_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ba_cheetah_data_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ba_cheetah_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ba_cheetah_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ba_cheetah_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ba_cheetah_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ba_cheetah_template_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ba_cheetah_template_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ba_cheetah_template_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ba_cheetah_template_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ba_cheetah_history_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ba_cheetah_history_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ba_cheetah_history_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ba_cheetah_history_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ba_cheetah_launched_tour'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ba_cheetah_launched_tour'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ba_cheetah_launched_tour'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ba_cheetah_launched_tour'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ba_cheetah_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ba_cheetah_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ba_cheetah_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ba_cheetah_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ba-cheetah-custom-footer-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ba-cheetah-custom-footer-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ba-cheetah-custom-footer-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ba-cheetah-custom-footer-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ba-cheetah-footer-option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ba-cheetah-footer-option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ba-cheetah-footer-option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ba-cheetah-footer-option'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ba-cheetah-custom-header-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ba-cheetah-custom-header-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ba-cheetah-custom-header-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ba-cheetah-custom-header-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ba-cheetah-header-option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ba-cheetah-header-option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ba-cheetah-header-option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ba-cheetah-header-option'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ba_cheetah_template_global'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ba_cheetah_template_global'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ba_cheetah_template_global'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ba_cheetah_template_global'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ba_cheetah_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ba_cheetah_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ba_cheetah_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ba_cheetah_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ba_cheetah_draft'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ba_cheetah_draft'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ba_cheetah_draft'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ba_cheetah_draft'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ba-cheetah-popup-width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ba-cheetah-popup-width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ba-cheetah-popup-width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ba-cheetah-popup-width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ba_cheetah_user_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ba_cheetah_user_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ba_cheetah_user_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ba_cheetah_user_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ba_cheetah_draft_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ba_cheetah_draft_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ba_cheetah_draft_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ba_cheetah_draft_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ba-cheetah-fixed-header'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ba-cheetah-fixed-header'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ba-cheetah-fixed-header'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ba-cheetah-fixed-header'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ba-cheetah-version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ba-cheetah-version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ba-cheetah-version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ba-cheetah-version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
