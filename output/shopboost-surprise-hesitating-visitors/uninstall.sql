-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shopboost_merchant_id', 'shopboost_enable', 'shopboost_enable_for_admin', 'shopboost_first_time');

