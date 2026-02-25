-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tt_arkam_lite', 'tt_arkam_lite_activated');
DELETE FROM wp_options WHERE option_name LIKE 'tt_arkam_lite_%';

