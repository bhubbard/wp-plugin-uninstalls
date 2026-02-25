#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'easy_social_sharing_handheld_enable'
wp option delete 'easy_social_sharing_meta_box_errors'
wp option delete 'easy_social_sharing_admin_notices'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'easy_social_sharing_admin_notice_%'"
wp option delete 'easy_social_sharing_db_version'
wp option delete 'easy_social_sharing_facebook_client_id'
wp option delete 'easy_social_sharing_facebook_client_secret'
wp option delete 'easy_social_sharing_facebook_access_token'
wp option delete 'easy_social_sharing_admin_footer_text_rated'
wp option delete 'easy_social_sharing_custom_colors_enabled'
wp option delete 'easy_social_sharing_background_color'
wp option delete 'easy_social_sharing_hover_background_color'
wp option delete 'easy_social_sharing_version'
wp option delete 'easy_social_sharing_allowed_locations'
wp option delete 'easy_social_sharing_reset_postdata'
wp option delete 'easy_social_sharing_front_page_enable'
wp option delete 'easy_social_sharing_inline_icons_location'
wp option delete 'easy_social_sharing_inline_enable_all_networks'
wp option delete 'easy_social_sharing_sidebar_enable_all_networks'
wp option delete 'easy_social_sharing_api_support_networks_only'
wp option delete 'ess-data-migrated'
wp option delete 'easy_social_sharing_allowed_screens'
wp option delete 'easy_social_sharing_all_except_screens'
wp option delete 'easy_social_sharing_specific_allowed_screens'
wp option delete 'ess-social-network-cache-date'
wp option delete 'easy_social_sharing_twitter_username'
wp option delete 'easy_social_sharing_allowed_networks'
wp option delete 'easy_social_sharing_handheld_disable'
wp option delete 'easy_social_sharing_minimum_share_count'
wp option delete 'easy_social_sharing_sidebar_icons_spacing'
wp option delete 'easy_social_sharing_flyin_enable_share_counts'
wp option delete 'easy_social_sharing_flyin_icon_shape'
wp option delete 'easy_social_sharing_flyin_icons_location'
wp option delete 'easy_social_sharing_flyin_enable_all_networks'
wp option delete 'easy_social_sharing_flyin_enable_networks_label'
wp option delete 'easy_social_sharing_flyin_trigger_purchase'
wp option delete 'easy_social_sharing_flyin_trigger_comment'
wp option delete 'easy_social_sharing_flyin_trigger_bottom'
wp option delete 'easy_social_sharing_flyin_enable_delay'
wp option delete 'easy_social_sharing_flyin_delay_duration'
wp option delete 'easy_social_sharing_flyin_enable_idle'
wp option delete 'easy_social_sharing_flyin_idle_timeout'
wp option delete 'easy_social_sharing_flyin_enable_scroll'
wp option delete 'easy_social_sharing_flyin_scroll_position'
wp option delete 'easy_social_sharing_flyin_enable_cookie'
wp option delete 'easy_social_sharing_flyin_cookie_duration'
wp option delete 'easy_social_sharing_flyin_title'
wp option delete 'easy_social_sharing_flyin_message'
wp option delete 'easy_social_sharing_flyin_enable_total_shares'
wp option delete 'easy_social_sharing_inline_enable_share_counts'
wp option delete 'easy_social_sharing_inline_icon_shape'
wp option delete 'easy_social_sharing_inline_layouts'
wp option delete 'easy_social_sharing_inline_enable_networks_label'
wp option delete 'easy_social_sharing_inline_enable_total_shares'
wp option delete 'easy_social_sharing_popup_enable_share_counts'
wp option delete 'easy_social_sharing_popup_layout'
wp option delete 'easy_social_sharing_popup_enable_all_networks'
wp option delete 'easy_social_sharing_popup_enable_networks_label'
wp option delete 'easy_social_sharing_popup_trigger_purchase'
wp option delete 'easy_social_sharing_popup_trigger_comment'
wp option delete 'easy_social_sharing_popup_trigger_bottom'
wp option delete 'easy_social_sharing_popup_enable_delay'
wp option delete 'easy_social_sharing_popup_delay_duration'
wp option delete 'easy_social_sharing_popup_enable_idle'
wp option delete 'easy_social_sharing_popup_idle_timeout'
wp option delete 'easy_social_sharing_popup_enable_scroll'
wp option delete 'easy_social_sharing_popup_scroll_position'
wp option delete 'easy_social_sharing_popup_enable_cookie'
wp option delete 'easy_social_sharing_popup_cookie_duration'
wp option delete 'easy_social_sharing_popup_title'
wp option delete 'easy_social_sharing_popup_message'
wp option delete 'easy_social_sharing_popup_enable_total_shares'
wp option delete 'easy_social_sharing_sidebar_enable_share_counts'
wp option delete 'easy_social_sharing_sidebar_icon_shape'
wp option delete 'easy_social_sharing_sidebar_enable_total_shares'
wp option delete 'easy_social_sharing_sidebar_layout_orientation'

# Delete Transients
wp transient delete 'ess_installing'
wp transient delete '_ess_activation_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Clear Cron Jobs
wp cron event delete 'easy_social_sharing_flush_rewrite_rules'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'disable_ess'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'disable_ess'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'disable_ess'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'disable_ess'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ess_location_disabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ess_location_disabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ess_location_disabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ess_location_disabled'"
