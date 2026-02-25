-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('novaksolutions_wf_setting_shortcode', 'novaksolutions_wf_setting_autoreplace');

