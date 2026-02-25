-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cip_settings', 'wl_cip_setup_wizard', 'cip_staff_request', 'cip_official_holidays', 'cip_staff_event_request');

