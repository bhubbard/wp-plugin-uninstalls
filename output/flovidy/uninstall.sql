-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('Flovidy_Plugin_bitly_access_token', 'Flovidy_Plugin_uk_ref', 'Flovidy_Plugin_jp_ref', 'Flovidy_Plugin_br_ref', 'Flovidy_Plugin_au_ref', 'Flovidy_Plugin_us_ref');
DELETE FROM wp_options WHERE option_name LIKE '%_ref';

