#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bdt_biggopti_dismissals'
wp option delete 'prime_slider_third_party_widget'
wp option delete 'elementor_use_mini_cart_template'
wp option delete 'ps_white_label_enabled'
wp option delete 'ps_white_label_hide_license'
wp option delete 'ps_white_label_bdtps_hide'
wp option delete 'ps_white_label_title'
wp option delete 'ps_white_label_icon'
wp option delete 'ps_white_label_icon_id'
wp option delete 'ps_white_label_logo'
wp option delete 'ps_white_label_logo_id'
wp option delete 'prime_slider_license_title_status'
wp option delete 'ps_white_label_access_token'
wp option delete 'ps_localhost_email_data'
wp option delete 'ps_custom_css'
wp option delete 'ps_custom_js'
wp option delete 'ps_custom_css_2'
wp option delete 'ps_custom_js_2'
wp option delete 'ps_excluded_pages'
wp option delete 'prime_slider_license_key'
wp option delete 'prime_slider_license_email'
wp option delete 'prime_slider_activation_time'
wp option delete 'prime_slider_backups'
wp option delete 'prime_slider_installation_complete'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_installed'"
wp option delete 'prime_slider_active_modules'
wp option delete 'prime_slider_elementor_extend'
wp option delete 'bdtps_setup_wizard_completed'
wp option delete 'elementor_viewport_lg'
wp option delete 'elementor_viewport_md'

# Delete Transients
wp transient delete 'prime_slider_backup_checked'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_dismissed_biggopti_%' OR option_name LIKE '_site_transient_dismissed_biggopti_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
