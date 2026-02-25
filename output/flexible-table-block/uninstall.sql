-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_show_global_setting';
DELETE FROM wp_options WHERE option_name LIKE '%_block_style';
DELETE FROM wp_options WHERE option_name LIKE '%_breakpoint';

