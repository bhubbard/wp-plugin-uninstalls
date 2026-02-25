-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('is_embedpress_milestone_showing', 'nx_force_popup_dismissed', 'nx_initial_popup_dismissed', 'notificationx_milestone_level', 'notificationx_milestone_current_level', 'notificationx_force_milestone', 'wpdeveloper_plugins_data', 'wpins_allow_tracking', 'wpins_last_track_time', 'active_sitewide_plugins', 'wpins_block_notice', 'nx_feedback_shared', 'nx_scan_count', 'nx_scan_date', 'WPML(TM-has-run)', 'notificationx_settings', 'nxpro_convertkit_api_key', 'nxpro_convertkit_api_secret', 'nx_daily_mail_sent', 'nx_weekly_mail_sent', 'nx_monthly_mail_sent', 'notificationx_data', 'woocommerce_shop_page_id', 'nx_get_field_names', 'nx_builder_fields', 'nx_activated', 'wpnotice_priority_time_expired');
DELETE FROM wp_options WHERE option_name LIKE 'wpins_deactivation_reason_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpins_deactivation_details_%';
DELETE FROM wp_options WHERE option_name LIKE '%_log';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'last_name', '_nx_bar_elementor_type_id', '_wp_page_template', 'wp_pattern_sync_status', 'rating', 'reviewx_title', '_tutor_enrolled_by_order_id', '_wp_attachment_backup_sizes');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'last_name', '_nx_bar_elementor_type_id', '_wp_page_template', 'wp_pattern_sync_status', 'rating', 'reviewx_title', '_tutor_enrolled_by_order_id', '_wp_attachment_backup_sizes');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'last_name', '_nx_bar_elementor_type_id', '_wp_page_template', 'wp_pattern_sync_status', 'rating', 'reviewx_title', '_tutor_enrolled_by_order_id', '_wp_attachment_backup_sizes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'last_name', '_nx_bar_elementor_type_id', '_wp_page_template', 'wp_pattern_sync_status', 'rating', 'reviewx_title', '_tutor_enrolled_by_order_id', '_wp_attachment_backup_sizes');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'job::%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'job::%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'job::%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'job::%';

