-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fb_username', 'tw_username', 'ins_username', 'fb_url', 'tw_url', 'ins_url');

