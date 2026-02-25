-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_internal_link';
DELETE FROM wp_options WHERE option_name LIKE '%_external_link';
DELETE FROM wp_options WHERE option_name LIKE '%_enabled';
DELETE FROM wp_options WHERE option_name LIKE '%_display_type';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_close';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_close_expiry';
DELETE FROM wp_options WHERE option_name LIKE '%_display_page';
DELETE FROM wp_options WHERE option_name LIKE '%_message_title';
DELETE FROM wp_options WHERE option_name LIKE '%_message_title_header_size';
DELETE FROM wp_options WHERE option_name LIKE '%_message_text';
DELETE FROM wp_options WHERE option_name LIKE '%_message_alignment';
DELETE FROM wp_options WHERE option_name LIKE '%_link_text';
DELETE FROM wp_options WHERE option_name LIKE '%_link_target';
DELETE FROM wp_options WHERE option_name LIKE '%_foreground_color';
DELETE FROM wp_options WHERE option_name LIKE '%_background_color';
DELETE FROM wp_options WHERE option_name LIKE '%_container_css';
DELETE FROM wp_options WHERE option_name LIKE '%_container_css_mobile';
DELETE FROM wp_options WHERE option_name LIKE '%_last_job_run_date';
DELETE FROM wp_options WHERE option_name LIKE '%_data_frequency';
DELETE FROM wp_options WHERE option_name LIKE '%_version';

