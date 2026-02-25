-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tw_asi_msg', 'tw_asi_html1', 'tw_asi_status');

