-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cc_mpopup_width', 'cc_mpopup_height', 'cc_mpopup_scroll');

