-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bitpress_reflection_bgcolor', 'bitpress_reflection_height');

