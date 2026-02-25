-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_issuu_user', 'wp_issuu_api_key', 'wp_issuu_api_sign', 'wp_issuu_height', 'wp_issuu_width', 'wp_issuu_version', 'wp_issuu_fs', 'wp_issuu_flipbtn', 'wp_issuu_layout', 'wp_issuu_pdf', 'wp_issuu_odt', 'wp_issuu_doc', 'wp_issuu_wpd', 'wp_issuu_sxw', 'wp_issuu_sxi', 'wp_issuu_rtf', 'wp_issuu_odp', 'wp_issuu_ppt', 'wp_issuu_bgcolor');

