-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sb_bar_enable_options', 'sb_bar_options');
DELETE FROM wp_options WHERE option_name LIKE '%_options';

