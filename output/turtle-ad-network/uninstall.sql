-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ad_approval', 'min_amount', 'ad_time', 'ad_cost', 'api_server', 'blacklist', 'payment_type', 'tadn_jal_db_version');

