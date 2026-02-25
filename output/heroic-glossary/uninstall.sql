-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('htgb_activation_time', 'htgb_notice_dismissed');

