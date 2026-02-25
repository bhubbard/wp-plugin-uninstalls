-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rs_enabled', 'rs_content', 'rs_display_secs', 'rs_hide_days');

