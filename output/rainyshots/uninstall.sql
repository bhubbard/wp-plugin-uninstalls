-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rsAdmin_Player', 'rsAdmin_CacheDur', 'cached_dribbble_shots');

