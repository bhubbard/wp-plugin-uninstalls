-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ww_loan_option', 'lc_avoid_notice', 'lc_rating_notice', 'last_notice_timestamp', 'plugin_activation_time', 'ww_loan_option[font_family_new_theme]', 'loan_calculator_db_version', 'delete_data_enable');

