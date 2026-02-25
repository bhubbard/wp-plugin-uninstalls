-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('exad_blocks_notice_hide', 'exad_save_settings', 'exad_google_map_api_option', 'exad_save_mailchimp_api', 'exad_primary_color_option', 'exad_secondary_color_option', 'exad_do_update_redirect', 'elementor_viewport_lg', 'elementor_viewport_md');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

