-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('stockdio_ticker_options', 'stockdio_ticker_my_plugin_do_activation_redirect');

