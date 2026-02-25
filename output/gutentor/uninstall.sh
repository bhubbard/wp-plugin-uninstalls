#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '__gutentor_do_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gutentor-cat-%'"
wp option delete 'gutentor_settings_options'
wp option delete '__gutentor_helper_options'
wp option delete 'gutentor_widget_dcss'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_key'"
wp option delete 'widget_block'
wp option delete '__templateberg_do_redirect'

# Delete Transients
wp transient delete 'gutentor_get_template_library'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_gutentor_get_block_json_%' OR option_name LIKE '_site_transient_gutentor_get_block_json_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_gutentor_meta_keys_%' OR option_name LIKE '_site_transient_gutentor_meta_keys_%'"

# Clear Cron Jobs
wp cron event delete 'gutentor_weekly_scheduled_events'
wp cron event delete 'gutentor_daily_scheduled_events'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gutentor_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gutentor_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gutentor_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gutentor_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gutentor_edd_demo_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gutentor_edd_demo_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gutentor_edd_demo_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gutentor_edd_demo_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gutentor_meta_video_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gutentor_meta_video_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gutentor_meta_video_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gutentor_meta_video_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gutentor_meta_video_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gutentor_meta_video_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gutentor_meta_video_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gutentor_meta_video_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gutentor_templateberg_notice_calendar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gutentor_templateberg_notice_calendar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gutentor_templateberg_notice_calendar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gutentor_templateberg_notice_calendar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gutentor_gfont_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gutentor_gfont_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gutentor_gfont_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gutentor_gfont_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gutentor_css_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gutentor_css_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gutentor_css_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gutentor_css_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gutentor_dynamic_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gutentor_dynamic_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gutentor_dynamic_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gutentor_dynamic_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_upgrade_to_pro_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_upgrade_to_pro_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_upgrade_to_pro_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_upgrade_to_pro_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_upgrade_to_pro_notice_partially'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_upgrade_to_pro_notice_partially'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_upgrade_to_pro_notice_partially'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_upgrade_to_pro_notice_partially'"
