#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bdt_biggopti_dismissals'
wp option delete 'upk_white_label_enabled'
wp option delete 'upk_white_label_hide_license'
wp option delete 'upk_white_label_bdtupk_hide'
wp option delete 'upk_white_label_title'
wp option delete 'upk_white_label_icon'
wp option delete 'upk_white_label_icon_id'
wp option delete 'upk_white_label_logo'
wp option delete 'upk_white_label_logo_id'
wp option delete 'ultimate_post_kit_license_title_status'
wp option delete 'upk_white_label_access_token'
wp option delete 'upk_localhost_email_data'
wp option delete 'upk_custom_css'
wp option delete 'upk_custom_js'
wp option delete 'upk_custom_css_2'
wp option delete 'upk_custom_js_2'
wp option delete 'upk_excluded_pages'
wp option delete 'ultimate_post_kit_license_key'
wp option delete 'ultimate_post_kit_license_email'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_installed'"
wp option delete 'ultimate_post_kit_active_modules'
wp option delete 'bdtupk_setup_wizard_completed'
wp option delete 'ultimate_post_kit_elementor_extend'
wp option delete 'ultimate_post_kit_api_settings'
wp option delete 'elementor_viewport_lg'
wp option delete 'elementor_viewport_md'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_dismissed_notice_%' OR option_name LIKE '_site_transient_dismissed_notice_%'"

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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'upk-category-image-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'upk-category-image-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'upk-category-image-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'upk-category-image-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_upk_video_link_meta_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_upk_video_link_meta_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_upk_video_link_meta_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_upk_video_link_meta_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_upk_audio_link_meta_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_upk_audio_link_meta_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_upk_audio_link_meta_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_upk_audio_link_meta_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_upk_audio_title_meta_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_upk_audio_title_meta_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_upk_audio_title_meta_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_upk_audio_title_meta_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_upk_artist_name_meta_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_upk_artist_name_meta_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_upk_artist_name_meta_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_upk_artist_name_meta_key'"
