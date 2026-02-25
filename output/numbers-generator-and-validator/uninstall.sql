-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ngv_enterprise_activity_report', 'new_validator_table', 'NumbersValidator_your_checked_tables', 'Ngv_checked_serial_tables', 'number_validator', 'your_title', 'your_text', 'your_checked_tables', 'number_validator_shortcode_name', 'NumbersValidator_your_title', 'NumbersValidator_your_text', 'NumbersValidator_shortcode_name', 'NumbersValidator_version', 'NumbersValidator_response1', 'NumbersValidator_response2', 'NumbersValidator_fetch', 'NumbersValidator_gen_shortcode');

