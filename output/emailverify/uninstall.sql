-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('emailverifyio_settings', 'ev_account_info', 'ev_api_validation');

