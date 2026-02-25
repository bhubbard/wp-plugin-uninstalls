#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'joan_time_format'
wp option delete 'joan_timezone'
wp option delete 'joan_allow_timezone_selector'
wp option delete 'joan_schedule_status'
wp option delete 'joan_off_air_message'
wp option delete 'joan_show_next_show'
wp option delete 'joan_show_jock_image'
wp option delete 'joan_widget_max_width'
wp option delete 'joan_center_widget_title'
wp option delete 'joan_custom_widget_title'
wp option delete 'joan_dark_mode'
wp option delete 'joan_dark_mode_override'
wp option delete 'joan_show_day_emoji'
wp option delete 'joan_jock_field_label'
wp option delete 'joan_link_assignment'
wp option delete 'joan_image_display_mode'
wp option delete 'joan_custom_css'
wp option delete 'joan_ads_enabled'
wp option delete 'joan_ads_refresh_interval'
wp option delete 'joan_jock_only_mode'
wp option delete 'joan_show_local_time'
wp option delete 'joan_ad_clicks'
wp option delete 'joan_enable_language_switcher'
wp option delete 'joan_custom_languages'
wp option delete 'joan_version'
wp option delete 'joan_migration_handled'
wp option delete 'joan_needs_migration'
wp option delete 'joan_backup_reminder'
wp option delete 'joan_post_migration_notice_dismissed'
wp option delete 'joan_legacy_data_imported'
wp option delete 'joan_old_version_data'
wp option delete 'joan_hide_activation_notice_609'

# Delete Transients
wp transient delete 'joan_available_languages'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'joan_premium_ad_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'joan_premium_ad_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'joan_premium_ad_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'joan_premium_ad_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'joan_vc_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'joan_vc_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'joan_vc_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'joan_vc_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'joan_elementor_warning_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'joan_elementor_warning_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'joan_elementor_warning_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'joan_elementor_warning_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'joan_vc_warning_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'joan_vc_warning_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'joan_vc_warning_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'joan_vc_warning_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'joan_language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'joan_language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'joan_language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'joan_language'"
