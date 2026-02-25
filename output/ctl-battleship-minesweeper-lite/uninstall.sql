-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('CTL_ARCADE_LITE_PLUGIN_VERSION', 'ctl-battleship-minesweeper-lite_do_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE '%_do_activation_redirect';

