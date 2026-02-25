-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kp_scroll_to_top_display', 'kt_scroll_to_top_themes');

