#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pagelayer_version'
wp option delete 'pagelayer_options'
wp option delete 'pagelayer_changelog_notice'
wp option delete 'pagelayer_tablet_breakpoint'
wp option delete 'pagelayer_mobile_breakpoint'
wp option delete 'pl_support_ept'
wp option delete 'pagelayer_enable_giver'
wp option delete 'pagelayer_content_width'
wp option delete 'pagelayer_sidebar'
wp option delete 'pagelayer_body_font'
wp option delete 'pagelayer_color'
wp option delete 'pagelayer_getting_started'
wp option delete 'softaculous_plugin_update_notice'
wp option delete 'pagelayer_google_captcha_lang'
wp option delete 'pagelayer_recaptcha_version'
wp option delete 'pagelayer-fbapp-id'
wp option delete 'pagelayer_disable_clone'
wp option delete 'pagelayer_header_code'
wp option delete 'pagelayer_body_open_code'
wp option delete 'pagelayer_footer_code'
wp option delete 'pagelayer_disable_media_replace'
wp option delete 'pagelayer-copyright'
wp option delete 'pagelayer_recaptcha_failed'
wp option delete 'pagelayer_cf_to_email'
wp option delete 'pagelayer_cf_from_email'
wp option delete 'pagelayer_cf_subject'
wp option delete 'pagelayer_cf_headers'
wp option delete 'softaculous_expired_licenses'
wp option delete 'pagelayer_google_captcha'
wp option delete 'pagelayer_customizer_mods'
wp option delete 'pagelayer_js_permission'
wp option delete 'sp_setup_done'
wp option delete 'pagelayer_icons_set'
wp option delete 'pagelayer-facebook-url'
wp option delete 'pagelayer-twitter-url'
wp option delete 'pagelayer-instagram-url'
wp option delete 'pagelayer-linkedin-url'
wp option delete 'pagelayer-youtube-url'
wp option delete 'pagelayer-gplus-url'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_imported'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dismissed'"
wp option delete 'pagelayer_google_captcha_secret'
wp option delete 'pagelayer_global_colors'
wp option delete 'pagelayer_global_fonts'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pagelayer_import_images_%'"
wp option delete 'pagelayer_template_product_fix'
wp option delete 'nav_menu_options'
wp option delete 'pagelayer_enable_dark_mode'
wp option delete 'pagelayer-gmaps-api-key'
wp option delete 'pagelayer_cf_success'
wp option delete 'pagelayer_cf_failed'
wp option delete 'pagelayer_local_gfont'
wp option delete 'pagelayer_between_widgets'
wp option delete 'pagelayer_customizer_options'
wp option delete 'pagelayer_pro_version'

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pagelayer_header_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pagelayer_header_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pagelayer_header_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pagelayer_header_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pagelayer_body_open_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pagelayer_body_open_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pagelayer_body_open_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pagelayer_body_open_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pagelayer_footer_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pagelayer_footer_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pagelayer_footer_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pagelayer_footer_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pagelayer-data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pagelayer-data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pagelayer-data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pagelayer-data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pagelayer_font_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pagelayer_font_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pagelayer_font_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pagelayer_font_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pagelayer_contact_templates'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pagelayer_contact_templates'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pagelayer_contact_templates'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pagelayer_contact_templates'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pagelayer_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pagelayer_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pagelayer_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pagelayer_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pagelayer_template_conditions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pagelayer_template_conditions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pagelayer_template_conditions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pagelayer_template_conditions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pagelayer_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pagelayer_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pagelayer_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pagelayer_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pagelayer_image_md5'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pagelayer_image_md5'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pagelayer_image_md5'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pagelayer_image_md5'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pagelayer_imported_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pagelayer_imported_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pagelayer_imported_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pagelayer_imported_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pagelayer_imported_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pagelayer_imported_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pagelayer_imported_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pagelayer_imported_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
