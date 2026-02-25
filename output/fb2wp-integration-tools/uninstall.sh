#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mxp_fb2wp_db_version'
wp option delete 'mxp_fb2wp_callback_url'
wp option delete 'mxp_fb_enable_jssdk'
wp option delete 'mxp_fb2wp_image_width'
wp option delete 'mxp_fb2wp_image_height'
wp option delete 'mxp_fb2wp_video_width'
wp option delete 'mxp_fb2wp_video_height'
wp option delete 'mxp_fb2wp_post_footer'
wp option delete 'mxp_fb_quote_enable'
wp option delete 'mxp_fb_page_id'
wp option delete 'mxp_fb_messenger_theme_color'
wp option delete 'mxp_fb_messenger_logged_in_greeting'
wp option delete 'mxp_fb_messenger_logged_out_greeting'
wp option delete 'mxp_fb_messenger_greeting_dialog_delay'
wp option delete 'mxp_fb_messenger_embed'
wp option delete 'mxp_fb_save_enable'
wp option delete 'mxp_fb_widget_place'
wp option delete 'mxp_fb_functions_section_title'
wp option delete 'mxp_fb_comments_enable'
wp option delete 'mxp_fb_app_id'
wp option delete 'mxp_fb_api_version'
wp option delete 'mxp_fb_jssdk_local'
wp option delete 'mxp_messenger_msglist'
wp option delete 'mxp_fb_clear_url_cache'
wp option delete 'mxp_fb_app_access_token'
wp option delete 'mxp_fb2wp_rating_import'
wp option delete 'mxp_fb_webhooks_verify_token'
wp option delete 'mxp_fb_secret'
wp option delete 'mxp_fb2wp_messenger_enable_pass_thread'
wp option delete 'mxp_fb2wp_messenger_enable_pass_thread_btn_text'
wp option delete 'mxp_messenger_default_reply'
wp option delete 'mxp_fb2wp_messenger_auth_users'
wp option delete 'mxp_fb2wp_messenger_enable'
wp option delete 'mxp_fb2wp_comment_mirror_enable'
wp option delete 'mxp_fb2wp_comment_mirror_approved'
wp option delete 'mxp_fb2wp_post_enable'
wp option delete 'mxp_fb2wp_auth_users'
wp option delete 'mxp_fb2wp_default_title'
wp option delete 'mxp_fb2wp_post_type'
wp option delete 'mxp_fb2wp_post_tags'
wp option delete 'mxp_fb2wp_no_post_tag'
wp option delete 'mxp_fb2wp_post_category'
wp option delete 'mxp_fb2wp_post_status'
wp option delete 'mxp_fb2wp_post_author'
wp option delete 'mxp_fb2wp_post_comment_status'
wp option delete 'mxp_fb2wp_post_ping_status'
wp option delete 'mxp_fb2wp_default_display_embed'
wp option delete 'mxp_fb2wp_default_display_attachment'
wp option delete 'mxp_fb2wp_default_display_img_caption'
wp option delete 'mxp_enable_debug'
wp option delete 'mxp_complete_remove'
wp option delete 'mxp_fb_send_enable'
wp option delete 'mxp_remove_plugin_debug_log'
wp option delete 'mxp_fb2wp_active_tab'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_bot_sleep' OR option_name LIKE '_site_transient_%_bot_sleep'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mxp_fb2wp_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mxp_fb2wp_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mxp_fb2wp_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mxp_fb2wp_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mxp_fb2wp_item'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mxp_fb2wp_item'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mxp_fb2wp_item'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mxp_fb2wp_item'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mxp_fb2wp_sender'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mxp_fb2wp_sender'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mxp_fb2wp_sender'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mxp_fb2wp_sender'"
