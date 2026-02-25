-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpterapeut_clicktext', 'wpterapeut_booklink', 'clicktext', 'link');

