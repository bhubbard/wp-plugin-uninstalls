#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'presslearn_analytics_enabled'
wp option delete 'presslearn_plugin_key'
wp option delete 'presslearn_plugin_activated_time'
wp option delete 'presslearn_activation_logs'
wp option delete 'presslearn_quick_button_enabled'
wp option delete 'presslearn_button_transition_enabled'
wp option delete 'presslearn_button_preset'
wp option delete 'presslearn_dynamic_banner_enabled'
wp option delete 'presslearn_indexnow_api_key'
wp option delete 'presslearn_auto_index_enabled'
wp option delete 'presslearn_auto_indexing_enabled'
wp option delete 'presslearn_click_protection_enabled'
wp option delete 'presslearn_scroll_depth_enabled'
wp option delete 'presslearn_social_share_enabled'
wp option delete 'presslearn_social_share_alignment'
wp option delete 'presslearn_social_share_options'
wp option delete 'presslearn_social_share_style'
wp option delete 'presslearn_kakao_api_key'
wp option delete 'presslearn_plugin_header_version'
wp option delete 'presslearn_plugin_settings'
wp option delete 'presslearn_ad_clicker_enabled'
wp option delete 'presslearn_header_footer_enabled'
wp option delete 'presslearn_click_protection_blocked_countries'
wp option delete 'presslearn_popup_content'
wp option delete 'presslearn_scroll_percentage'
wp option delete 'presslearn_popup_animation'
wp option delete 'presslearn_repeat_setting'
wp option delete 'presslearn_adclicker_overlay_range'
wp option delete 'presslearn_adclicker_overlay_color'
wp option delete 'presslearn_adclicker_button_color'
wp option delete 'presslearn_adclicker_button_text_color'
wp option delete 'presslearn_adclicker_display_time'
wp option delete 'presslearn_click_protection_block_expiry_days'
wp option delete 'presslearn_analytics_exclude_admin'
wp option delete 'presslearn_analytics_use_cloudflare'
wp option delete 'presslearn_click_protection_use_cloudflare'
wp option delete 'presslearn_click_protection_allowed_ips'
wp option delete 'presslearn_click_protection_blocked_ips'
wp option delete 'presslearn_click_protection_blocked_ips_backup_delete'
wp option delete 'presslearn_reset_localStorage_signals'
wp option delete 'presslearn_click_protection_blocked_ips_backup'
wp option delete 'presslearn_max_click_count'
wp option delete 'presslearn_click_time_window'
wp option delete 'presslearn_modal_title'
wp option delete 'presslearn_modal_message'
wp option delete 'presslearn_modal_submessage'
wp option delete 'presslearn_modal_button_text'
wp option delete 'presslearn_adclicker_global_enabled'
wp option delete 'presslearn_adclicker_frequency'
wp option delete 'presslearn_analytics_cache_time'
wp option delete 'presslearn_header_code'
wp option delete 'presslearn_body_open_code'
wp option delete 'presslearn_before_closing_body_code'
wp option delete 'presslearn_footer_code'
wp option delete 'presslearn_index_post_types'
wp option delete 'presslearn_ai_contents_enabled'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_presslearn_activation_attempts_%' OR option_name LIKE '_site_transient_presslearn_activation_attempts_%'"
wp transient delete 'presslearn_plugin_activation_redirect'
wp transient delete 'presslearn_plugin_updated_notice'

# Clear Cron Jobs
wp cron event delete 'presslearn_index_post_delayed'
wp cron event delete 'presslearn_check_blocked_ips_expiry'
wp cron event delete 'presslearn_daily_post_views_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'presslearn_user_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'presslearn_user_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'presslearn_user_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'presslearn_user_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_presslearn_post_views'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_presslearn_post_views'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_presslearn_post_views'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_presslearn_post_views'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_presslearn_adclicker_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_presslearn_adclicker_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_presslearn_adclicker_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_presslearn_adclicker_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_presslearn_adclicker_button_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_presslearn_adclicker_button_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_presslearn_adclicker_button_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_presslearn_adclicker_button_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_presslearn_adclicker_ad_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_presslearn_adclicker_ad_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_presslearn_adclicker_ad_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_presslearn_adclicker_ad_link'"
