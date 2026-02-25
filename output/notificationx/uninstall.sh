#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'is_embedpress_milestone_showing'
wp option delete 'nx_force_popup_dismissed'
wp option delete 'nx_initial_popup_dismissed'
wp option delete 'notificationx_milestone_level'
wp option delete 'notificationx_milestone_current_level'
wp option delete 'notificationx_force_milestone'
wp option delete 'wpdeveloper_plugins_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpins_deactivation_reason_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpins_deactivation_details_%'"
wp option delete 'wpins_allow_tracking'
wp option delete 'wpins_last_track_time'
wp option delete 'active_sitewide_plugins'
wp option delete 'wpins_block_notice'
wp option delete 'nx_feedback_shared'
wp option delete 'nx_scan_count'
wp option delete 'nx_scan_date'
wp option delete 'WPML(TM-has-run)'
wp option delete 'notificationx_settings'
wp option delete 'nxpro_convertkit_api_key'
wp option delete 'nxpro_convertkit_api_secret'
wp option delete 'nx_daily_mail_sent'
wp option delete 'nx_weekly_mail_sent'
wp option delete 'nx_monthly_mail_sent'
wp option delete 'notificationx_data'
wp option delete 'woocommerce_shop_page_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_log'"

# Delete Transients
wp transient delete 'nx_get_field_names'
wp transient delete 'nx_builder_fields'
wp transient delete 'nx_activated'
wp transient delete 'wpnotice_priority_time_expired'

# Clear Cron Jobs
wp cron event delete 'weekly_email_reporting'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nx_bar_elementor_type_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nx_bar_elementor_type_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nx_bar_elementor_type_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nx_bar_elementor_type_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_pattern_sync_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_pattern_sync_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_pattern_sync_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_pattern_sync_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'reviewx_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'reviewx_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'reviewx_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'reviewx_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tutor_enrolled_by_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tutor_enrolled_by_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tutor_enrolled_by_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tutor_enrolled_by_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'job::%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'job::%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'job::%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'job::%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
