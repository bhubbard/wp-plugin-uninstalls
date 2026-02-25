-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('adunblock_id', 'my_plugin_do_activation_redirect', 'code_adunblock', 'code_adunblock_lt');

