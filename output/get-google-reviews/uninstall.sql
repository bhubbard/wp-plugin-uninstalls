-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('diggr_options');
DELETE FROM wp_options WHERE option_name LIKE '%_options';

