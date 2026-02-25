#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpsn_side_activity'
wp option delete 'wpsn_cron_alerts'
wp option delete 'wpsn_home'
wp option delete 'wpsn_activity'
wp option delete 'wpsn_friends'
wp option delete 'wpsn_edit_profile'
wp option delete 'wpsn_search'
wp option delete 'wpsn_alerts'
wp option delete 'wpsn_login'
wp option delete 'wpsn_signup'
wp option delete 'wpsn_landing_page'
wp option delete 'wpsn_background_image_url'
wp option delete 'wpsn_dummy_avatar'
wp option delete 'wpsn_prompt'
wp option delete 'wpsn_home_posts_limit'
wp option delete 'wpsn_home_posts_show_comments_limit'
wp option delete 'wpsn_alert_count'
wp option delete 'wpsn_reply_limit'
wp option delete 'wpsn_banned'
wp option delete 'wpsn_banned_sub'
wp option delete 'wpsn_content_max_width'
wp option delete 'wpsn_corner_radius'
wp option delete 'wpsn_menu_bar'
wp option delete 'wpsn_menu_loggedout'
wp option delete 'wpsn_top_bar_labels'
wp option delete 'wpsn_theme_home_avatar'
wp option delete 'wpsn_background_image_space'
wp option delete 'wpsn_background_image_specific'
wp option delete 'wpsn_hide_action_buttons'
wp option delete 'wpsn_color_menu'
wp option delete 'wpsn_color_menu_text'
wp option delete 'wpsn_color_primary'
wp option delete 'wpsn_color_primary_hover'
wp option delete 'wpsn_color_primary_border'
wp option delete 'wpsn_color_primary_contrast'
wp option delete 'wpsn_color_secondary'
wp option delete 'wpsn_color_active'
wp option delete 'wpsn_color_page_background'
wp option delete 'wpsn_box_background_color'
wp option delete 'wpsn_color_page_text'
wp option delete 'wpsn_box_border_color'
wp option delete 'wpsn_box_text_color'
wp option delete 'wpsn_box_link_color'
wp option delete 'wpsn_box_link_hover_color'
wp option delete 'wpsn_box_input_color'
wp option delete 'wpsn_color_cta'
wp option delete 'wpsn_color_cancel'
wp option delete 'wpsn_color_disabled'
wp option delete 'wpsn_font_x_large'
wp option delete 'wpsn_font_large'
wp option delete 'wpsn_font_medium'
wp option delete 'wpsn_font_small'
wp option delete 'wpsn_font_x_small'
wp option delete 'wpsn_font_xx_small'
wp option delete 'wpsn_font_xxx_small'
wp option delete 'wpsn_markdown'
wp option delete 'wpsn_home_photos_check'
wp option delete 'wpsn_home_photos_include'
wp option delete 'wpsn_cron_seconds'
wp option delete 'wpsn_cron_count'

# Delete Transients
wp transient delete 'wpsn_nonce'

# Clear Cron Jobs
wp cron event delete 'wpsn_custom_cron_job'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsn_profile_public'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsn_profile_public'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsn_profile_public'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsn_profile_public'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsn_alert_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsn_alert_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsn_alert_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsn_alert_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsn_friend_requests_received'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsn_friend_requests_received'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsn_friend_requests_received'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsn_friend_requests_received'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsn_friends'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsn_friends'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsn_friends'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsn_friends'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsn_friend_requests_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsn_friend_requests_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsn_friend_requests_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsn_friend_requests_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsn_friends_public'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsn_friends_public'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsn_friends_public'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsn_friends_public'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsn_last_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsn_last_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsn_last_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsn_last_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsn_last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsn_last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsn_last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsn_last_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsn_email_friends'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsn_email_friends'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsn_email_friends'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsn_email_friends'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsn_email_posts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsn_email_posts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsn_email_posts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsn_email_posts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsn_post_files'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsn_post_files'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsn_post_files'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsn_post_files'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsn_target_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsn_target_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsn_target_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsn_target_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsn_creation_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsn_creation_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsn_creation_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsn_creation_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsn_custom_cover'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsn_custom_cover'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsn_custom_cover'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsn_custom_cover'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsn_custom_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsn_custom_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsn_custom_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsn_custom_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsn_last_logged_in'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsn_last_logged_in'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsn_last_logged_in'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsn_last_logged_in'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsn_previous_logged_in'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsn_previous_logged_in'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsn_previous_logged_in'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsn_previous_logged_in'"
