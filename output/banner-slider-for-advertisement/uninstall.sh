#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpbsc_additional_css'
wp option delete 'wpbsc_before_header_archive_id'
wp option delete 'wpbsc_before_header_home_id'
wp option delete 'wpbsc_before_header_search_id'
wp option delete 'wpbsc_after_header_archive_id'
wp option delete 'wpbsc_after_header_home_id'
wp option delete 'wpbsc_after_header_search_id'
wp option delete 'wpbsc_before_loop_home_id'
wp option delete 'wpbsc_before_loop_search_id'
wp option delete 'wpbsc_after_loop_home_id'
wp option delete 'wpbsc_after_loop_search_id'
wp option delete 'wpbsc_before_footer_archive_id'
wp option delete 'wpbsc_before_footer_home_id'
wp option delete 'wpbsc_before_footer_search_id'
wp option delete 'wpbsc_after_footer_archive_id'
wp option delete 'wpbsc_after_footer_home_id'
wp option delete 'wpbsc_after_footer_search_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'disable_pagination'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'disable_pagination'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'disable_pagination'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'disable_pagination'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'disable_prev_next'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'disable_prev_next'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'disable_prev_next'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'disable_prev_next'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'disable_auto_play'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'disable_auto_play'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'disable_auto_play'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'disable_auto_play'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'disable_loop'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'disable_loop'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'disable_loop'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'disable_loop'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'disable_auto_height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'disable_auto_height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'disable_auto_height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'disable_auto_height'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'disable_keyboard'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'disable_keyboard'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'disable_keyboard'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'disable_keyboard'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slider_effect'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slider_effect'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slider_effect'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slider_effect'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slider_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slider_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slider_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slider_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'content_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'content_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'content_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'content_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'random_banners'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'random_banners'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'random_banners'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'random_banners'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'disable_on_mobile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'disable_on_mobile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'disable_on_mobile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'disable_on_mobile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slide_per_view'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slide_per_view'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slide_per_view'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slide_per_view'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'space_between'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'space_between'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'space_between'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'space_between'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'image%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'image%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'image%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'image%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'url%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'url%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'url%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'url%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpbsc_before_header_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpbsc_before_header_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpbsc_before_header_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpbsc_before_header_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpbsc_after_header_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpbsc_after_header_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpbsc_after_header_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpbsc_after_header_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpbsc_before_loop_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpbsc_before_loop_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpbsc_before_loop_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpbsc_before_loop_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpbsc_after_loop_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpbsc_after_loop_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpbsc_after_loop_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpbsc_after_loop_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpbsc_before_footer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpbsc_before_footer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpbsc_before_footer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpbsc_before_footer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpbsc_after_footer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpbsc_after_footer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpbsc_after_footer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpbsc_after_footer_id'"
