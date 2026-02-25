-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('calculator_builder_data', 'calchub_notice_status', 'calchub_settings');

