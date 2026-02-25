#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'easy_sticky_sidebar_settings'
wp option delete 'easy_sticky_sidebar_default_attachment'
wp option delete 'wordpress_cta_design_template_images'
wp option delete 'easy_sticky_sidebar_version'
wp option delete 'easy_sticky_sidebar_migrated'
wp option delete 'SSuprydp_development'
wp option delete 'SSuprydp_location'
wp option delete 'SSuprydp_button_option_text'
wp option delete 'SSuprydp_button_option_backg_color'
wp option delete 'SSuprydp_button_option_font'
wp option delete 'SSuprydp_button_option_weight'
wp option delete 'SSuprydp_button_option_size'
wp option delete 'SSuprydp_button_option_align'
wp option delete 'SSuprydp_button_option_color'
wp option delete 'SSuprydp_content_option_text'
wp option delete 'SSuprydp_content_option_font'
wp option delete 'SSuprydp_content_option_weight'
wp option delete 'SSuprydp_content_option_size'
wp option delete 'SSuprydp_content_option_color'
wp option delete 'SSuprydp_divider_option_color'
wp option delete 'SSuprydp_action_option_text'
wp option delete 'SSuprydp_action_option_font'
wp option delete 'SSuprydp_action_option_weight'
wp option delete 'SSuprydp_action_option_size'
wp option delete 'SSuprydp_action_option_color'
wp option delete 'SSuprydp_action_option_url'
wp option delete 'SSuprydp_dis_mobile'
wp option delete 'SSuprydp_target_blank'
wp option delete 'SSuprydp_nofollow'
wp option delete 'SSuprydp_shrink'
wp option delete 'SSuprydp_img_hideimg'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easy_sticky_sidebar_attachment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easy_sticky_sidebar_attachment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easy_sticky_sidebar_attachment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easy_sticky_sidebar_attachment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
