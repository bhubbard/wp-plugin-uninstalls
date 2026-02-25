-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('stockdio_market_overview_options', 'stockdio_market_overview_my_plugin_do_activation_redirect');

