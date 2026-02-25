-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gtm4publishers_settings', 'gtm4publishers_activation_redirect', 'gtm4pubs_cache', 'gtm4pubs_temp');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_gtm4pubs_premium_content', '_gtm4pubs_evergreen_content', '_elementor_edit_mode', '_et_pb_use_builder', '_et_pb_built_for_post_type', '_wpb_vc_js_status', '_wpb_vc_js_interface_version');
DELETE FROM wp_usermeta WHERE meta_key IN ('_gtm4pubs_premium_content', '_gtm4pubs_evergreen_content', '_elementor_edit_mode', '_et_pb_use_builder', '_et_pb_built_for_post_type', '_wpb_vc_js_status', '_wpb_vc_js_interface_version');
DELETE FROM wp_termmeta WHERE meta_key IN ('_gtm4pubs_premium_content', '_gtm4pubs_evergreen_content', '_elementor_edit_mode', '_et_pb_use_builder', '_et_pb_built_for_post_type', '_wpb_vc_js_status', '_wpb_vc_js_interface_version');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_gtm4pubs_premium_content', '_gtm4pubs_evergreen_content', '_elementor_edit_mode', '_et_pb_use_builder', '_et_pb_built_for_post_type', '_wpb_vc_js_status', '_wpb_vc_js_interface_version');

