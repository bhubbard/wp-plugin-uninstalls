#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zolo_sigmative_api_key'
wp option delete 'bdt_biggopti_dismissals'
wp option delete 'zolo_maintenance_mode'
wp option delete 'zolo_coming_soon_mode'
wp option delete 'zolo_maintenance_mode_template'
wp option delete 'zolo_site_visibility_private_link'
wp option delete 'zolo_site_visibility_secret_key'
wp option delete 'zolo_favorite_templates'
wp option delete 'zolo_google_api_key'
wp option delete 'zolo_google_spread_sheet_api_key'
wp option delete 'zolo_support_svg'
wp option delete 'zolo_enable_recaptcha'
wp option delete 'zolo_recaptcha_site_key'
wp option delete 'zolo_recaptcha_secret_key'
wp option delete 'zolo_mailchimp_api_key'
wp option delete 'zolo_mailchimp_audience_id'
wp option delete 'zolo_enable_template_library'
wp option delete 'zolo_disable_core_patterns'
wp option delete 'zolo_auto_recovery'
wp option delete 'zolo_sidebar_opener'
wp option delete 'zolo_webhooks'
wp option delete 'zolo_enable_video_link'
wp option delete 'zolo_blocks_settings'
wp option delete 'zolo_favorites'
wp option delete 'zolo_extensions_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-version'"

# Delete Transients
wp transient delete 'zolo_meta_keys'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zolo-category-image-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zolo-category-image-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zolo-category-image-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zolo-category-image-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zoloClassManagerStyles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zoloClassManagerStyles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zoloClassManagerStyles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zoloClassManagerStyles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'form_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'form_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'form_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'form_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'submission_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'submission_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'submission_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'submission_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'validation_rules'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'validation_rules'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'validation_rules'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'validation_rules'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'form_entry_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'form_entry_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'form_entry_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'form_entry_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 're_captcha'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 're_captcha'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 're_captcha'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 're_captcha'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zolo_popup_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zolo_popup_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zolo_popup_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zolo_popup_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zolo_popup_repeat_num'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zolo_popup_repeat_num'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zolo_popup_repeat_num'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zolo_popup_repeat_num'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zolo_popup_infinite_repeat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zolo_popup_infinite_repeat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zolo_popup_infinite_repeat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zolo_popup_infinite_repeat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zolo_popup_trigger'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zolo_popup_trigger'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zolo_popup_trigger'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zolo_popup_trigger'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zolo_popup_enable_disable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zolo_popup_enable_disable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zolo_popup_enable_disable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zolo_popup_enable_disable'"
