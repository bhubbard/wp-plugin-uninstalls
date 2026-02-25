-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpdesk_tracker_notice', 'wpdesk_tracker_agree');

