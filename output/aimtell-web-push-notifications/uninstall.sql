-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aimtell_domain', 'aimtell_uid', 'aimtell_idSite', 'aimtell_webpushid');

