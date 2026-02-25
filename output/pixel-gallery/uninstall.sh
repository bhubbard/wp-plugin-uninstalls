#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bdt_biggopti_dismissals'
wp option delete 'pg_white_label_enabled'
wp option delete 'pg_white_label_hide_license'
wp option delete 'pg_white_label_bdtpg_hide'
wp option delete 'pg_white_label_title'
wp option delete 'pg_white_label_icon'
wp option delete 'pg_white_label_icon_id'
wp option delete 'pg_white_label_logo'
wp option delete 'pg_white_label_logo_id'
wp option delete 'pixel_gallery_license_title_status'
wp option delete 'pg_white_label_access_token'
wp option delete 'pg_localhost_email_data'
wp option delete 'pg_custom_css'
wp option delete 'pg_custom_js'
wp option delete 'pg_custom_css_2'
wp option delete 'pg_custom_js_2'
wp option delete 'pg_excluded_pages'
wp option delete 'pixel_gallery_license_email'
wp option delete 'pixel_gallery_license_key'
wp option delete 'pixel_gallery_active_modules'
wp option delete 'pixel_gallery_elementor_extend'
wp option delete 'pixel_gallery_third_party_widget'
wp option delete 'bdtpg_setup_wizard_completed'
wp option delete 'pixel-gallery-minified-asset-manager-version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
