-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('curl_shadow_height', 'curl_shadow_opacity', 'flat_shadow_height', 'flat_shadow_opacity');

