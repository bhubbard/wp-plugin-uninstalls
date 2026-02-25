-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mfbfw-rate-time', 'mfbfw', 'mfbfw_active_version');

