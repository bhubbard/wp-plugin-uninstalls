-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('stockdio_quotes_board_options', 'stockdio_quotes_board_my_plugin_do_activation_redirect');

