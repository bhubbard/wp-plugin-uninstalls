-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpclientref_settings', '_wpclientref_settings_status', '_wpclientref_prev_post_type');

