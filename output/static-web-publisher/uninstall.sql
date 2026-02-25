-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('stwbpb_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_disable_static_web_link', '_static_web_connections_info', '_disable_original_page');
DELETE FROM wp_usermeta WHERE meta_key IN ('_disable_static_web_link', '_static_web_connections_info', '_disable_original_page');
DELETE FROM wp_termmeta WHERE meta_key IN ('_disable_static_web_link', '_static_web_connections_info', '_disable_original_page');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_disable_static_web_link', '_static_web_connections_info', '_disable_original_page');

