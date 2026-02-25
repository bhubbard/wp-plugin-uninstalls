#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'easy_element_settings'
wp option delete 'easy_element_user_data'
wp option delete 'easyel_enable_js_animation'
wp option delete 'easyel_enable_cursor'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'easy_element_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'easy_element_group_%'"
wp option delete 'easyel_scroll_smoother_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'easyel_plugin_version'
wp option delete 'easyel_admin_promo_notice_dismissed2'
wp option delete 'hfe_plugin_is_activated'
wp option delete 'rtshfe_addon_option'
wp option delete 'hfe_compatibility_option'
wp option delete 'easy_live_copy_btn_enable'
wp option delete 'easyel_elements_minify_css'
wp option delete 'easyel_elements_minify_js'
wp option delete 'easyel_flush_rewrite_rules'
wp option delete 'easyel_reading_progressbar_settings'
wp option delete 'easyelements_permalinks_flushed'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hfe-popup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hfe-popup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hfe-popup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hfe-popup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hfe-subscribed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hfe-subscribed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hfe-subscribed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hfe-subscribed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ehf_target_include_locations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ehf_target_include_locations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ehf_target_include_locations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ehf_target_include_locations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ehf_target_exclude_locations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ehf_target_exclude_locations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ehf_target_exclude_locations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ehf_target_exclude_locations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ehf_target_user_roles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ehf_target_user_roles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ehf_target_user_roles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ehf_target_user_roles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easyel_fixed_header'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easyel_fixed_header'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easyel_fixed_header'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easyel_fixed_header'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ehf_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ehf_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ehf_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ehf_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'display-on-canvas-template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'display-on-canvas-template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'display-on-canvas-template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'display-on-canvas-template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'unsupported-theme'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'unsupported-theme'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'unsupported-theme'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'unsupported-theme'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-exclusion'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-exclusion'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-exclusion'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-exclusion'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-users'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-users'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-users'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-users'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easyel_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easyel_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easyel_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easyel_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easyel_conditions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easyel_conditions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easyel_conditions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easyel_conditions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'consent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'consent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'consent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'consent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easyel__menu_item_elementor_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easyel__menu_item_elementor_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easyel__menu_item_elementor_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easyel__menu_item_elementor_template'"
