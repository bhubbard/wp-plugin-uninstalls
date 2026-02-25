#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wrs_schedule_page_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wrs_playnowtext'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wrs_logo'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wrs_address'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wrs_audio_address'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wrs_default_images'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wrs_send_follower_notifications'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wrs_send_post_notifications'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wrs_send_slot_notifications'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wrs_send_dj_weekly_notifications'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wrs_text_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wrs_accent_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wrs_secondary_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wrs_border_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wrs_background_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wrs_header_footer_background_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wrs_color_scheme'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wrs_need_approval'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wrs_max_name_chars'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wrs_max_show_name_chars'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wrs_show_name_field_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wrs_max_desc_chars'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wrs_default_avatar_size'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wrs_cf7_join_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wrs_cf7_join_modal_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wrs_cf7_message_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%wrs_max_desc_chars'"
wp option delete 'tzwrs_wrs_schedule_page_id'
wp option delete 'tzwrs_wrs_signup_page_id'
wp option delete 'easy_social_sharing_twitter_username'
wp option delete 'tzwrs_wrs_logo'
wp option delete 'tzwrs_wrs_cf7_join_modal_id'
wp option delete 'tzwrs_wrs_default_avatar_size'
wp option delete 'easy_social_sharing_inline_enable_share_counts'
wp option delete 'easy_social_sharing_inline_icon_shape'
wp option delete 'easy_social_sharing_inline_layouts'
wp option delete 'easy_social_sharing_inline_enable_networks_label'
wp option delete 'easy_social_sharing_inline_enable_all_networks'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wrs_signup_page_id'"

# Clear Cron Jobs
wp cron event delete 'tzwrs_reset_schedule_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_showyear'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_showyear'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_showyear'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_showyear'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_birthday'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_birthday'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_birthday'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_birthday'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_show_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_show_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_show_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_show_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_twitter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_twitter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_twitter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_twitter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_fbprofile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_fbprofile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_fbprofile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_fbprofile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_fbpage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_fbpage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_fbpage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_fbpage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_instagram'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_instagram'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_instagram'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_instagram'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_mixcloud'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_mixcloud'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_mixcloud'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_mixcloud'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_pronoun'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_pronoun'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_pronoun'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_pronoun'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_follower_notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_follower_notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_follower_notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_follower_notes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_post_notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_post_notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_post_notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_post_notes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_slot_notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_slot_notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_slot_notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_slot_notes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_digest_notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_digest_notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_digest_notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_digest_notes'"
