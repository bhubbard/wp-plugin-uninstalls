-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dwr_merchant_pass_two', 'dwr_result_url', 'dwr_result_url_method', 'dwr_merchant_login', 'dwr_merchant_pass_one', 'dwr_default_donation_amount', 'dwr_operation_description', 'dwr_force_delete_tables');

