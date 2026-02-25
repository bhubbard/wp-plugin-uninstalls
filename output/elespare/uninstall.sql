-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'woocommerce_shop_page_id', 'elementor_maintenance_mode_mode', 'elementor_maintenance_mode_template_id', 'elespare_upgrade_notice_start_time', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ele_hf_post', 'ele_hf_ex_post', 'ele_hf_no_display', 'ele_hf_ex_post_type', 'ele_hf_type', 'ele_hf_display', 'ele_hf_post_type', 'elespare_upgrade_notice_dismiss_temporary_start_time_v2', 'elespare_upgrade_notice_dismiss_v2');
DELETE FROM wp_usermeta WHERE meta_key IN ('ele_hf_post', 'ele_hf_ex_post', 'ele_hf_no_display', 'ele_hf_ex_post_type', 'ele_hf_type', 'ele_hf_display', 'ele_hf_post_type', 'elespare_upgrade_notice_dismiss_temporary_start_time_v2', 'elespare_upgrade_notice_dismiss_v2');
DELETE FROM wp_termmeta WHERE meta_key IN ('ele_hf_post', 'ele_hf_ex_post', 'ele_hf_no_display', 'ele_hf_ex_post_type', 'ele_hf_type', 'ele_hf_display', 'ele_hf_post_type', 'elespare_upgrade_notice_dismiss_temporary_start_time_v2', 'elespare_upgrade_notice_dismiss_v2');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ele_hf_post', 'ele_hf_ex_post', 'ele_hf_no_display', 'ele_hf_ex_post_type', 'ele_hf_type', 'ele_hf_display', 'ele_hf_post_type', 'elespare_upgrade_notice_dismiss_temporary_start_time_v2', 'elespare_upgrade_notice_dismiss_v2');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice_dismiss_v2';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice_dismiss_v2';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice_dismiss_v2';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice_dismiss_v2';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice_dismiss_temporary_v2';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice_dismiss_temporary_v2';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice_dismiss_temporary_v2';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice_dismiss_temporary_v2';

