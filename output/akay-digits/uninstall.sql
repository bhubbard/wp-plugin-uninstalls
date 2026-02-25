-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_akay_ippanel';
DELETE FROM wp_options WHERE option_name LIKE '%_akay_melipayamak';

