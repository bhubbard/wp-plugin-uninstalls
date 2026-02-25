-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('powerwaf_settings', 'powerwafcdn_last_update_time', 'powerwafcdn_last_update_url');

