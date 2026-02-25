#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bafg_migrated'
wp option delete 'bafg_watermark'
wp option delete 'bafg_tools'
wp option delete 'beaf_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'bafg_pro_activated'
wp option delete 'bafg_promo__schudle_start_from'
wp option delete 'bafg_sidebar_banner__schedule_option'
wp option delete 'tf_promo_notice_exists'
wp option delete 'bafg_promo_notice_woo_exists'
wp option delete 'tf_promo_widget_exists'
wp option delete 'bafg_dashboard_widget_dismissed'
wp option delete 'bafg_dismiss_admin_notice'
wp option delete 'bafg_dismiss_post_notice'
wp option delete 'bafg_sidebar_banner_notice_exists'
wp option delete 'bafg_installation_date'
wp option delete 'bafg_review_notice_status'
wp option delete 'beaf_pro_license_status'
wp option delete 'bafg_filter_gallery_style_alignment'
wp option delete 'bafg_filter_gallery_style_border'
wp option delete 'bafg_filter_gallery_style_text_color'
wp option delete 'bafg_filter_gallery_style_bg_color'
wp option delete 'bafg_filter_gallery_style_text_h_color'
wp option delete 'bafg_filter_gallery_style_bg_h_color'
wp option delete 'bafg_filter_gallery_style_padding_tb'
wp option delete 'bafg_filter_gallery_style_padding_lr'

# Clear Cron Jobs
wp cron event delete 'bafg_sidebar_banner__schedule'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'beaf_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'beaf_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'beaf_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'beaf_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bafg_woo_new_feature_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bafg_woo_new_feature_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bafg_woo_new_feature_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bafg_woo_new_feature_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tf_hotels_opt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tf_hotels_opt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tf_hotels_opt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tf_hotels_opt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'beaf_fomo_first_visit_time_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'beaf_fomo_first_visit_time_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'beaf_fomo_first_visit_time_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'beaf_fomo_first_visit_time_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bafg_show_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bafg_show_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bafg_show_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bafg_show_title'"
