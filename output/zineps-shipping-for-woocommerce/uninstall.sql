-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zineps_api_mode', 'zineps_working_api', 'zineps_client_id', 'zineps_client_secret', 'zineps_shop_name', 'zineps_default_carrier', 'zineps_default_method', 'zineps_default_complete_order');

