-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc-oca_options');
DELETE FROM wp_options WHERE option_name LIKE 'wc-oca-%';
DELETE FROM wp_options WHERE option_name LIKE '%-notices';

