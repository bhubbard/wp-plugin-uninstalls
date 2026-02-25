-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('phplugins_carts_show_id', 'phplugins_carts_no_ip', 'phplugins_carts_no_url', 'phplugins_carts_debug', 'phplugins_carts_migration_1_2_0_complete', 'phplugins_carts_version');

