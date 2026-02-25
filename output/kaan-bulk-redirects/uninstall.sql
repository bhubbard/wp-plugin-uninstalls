-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kaan_bulk_redirects', 'kaan_bulk_redirects_old');

