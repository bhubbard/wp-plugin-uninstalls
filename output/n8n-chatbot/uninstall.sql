-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('chatics_url', 'chatics_enabled', 'chatics_position', 'chatics_title', 'chatics_color', 'chatics_icon_type', 'chatics_icon_text', 'chatics_icon_url', 'chatics_zoom', 'chatics_allowed_days', 'chatics_start_time', 'chatics_end_time', 'chatics_header_enabled');

