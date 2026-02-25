-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wtbp_ce_settings', 'adminhash', 'site_name');
DELETE FROM wp_options WHERE option_name LIKE '%_new_email';

