-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bfd_general_settings', 'bfd_tools_settings', 'brozzme_plugins_api_results');
DELETE FROM wp_options WHERE option_name LIKE 'brozzme_plugins_api_version_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_et_pb_page_layout', '_et_single_title', '_et_pb_post_hide_nav', '_et_pb_side_nav', '_et_pb_show_title', '_et_pb_use_builder');
DELETE FROM wp_usermeta WHERE meta_key IN ('_et_pb_page_layout', '_et_single_title', '_et_pb_post_hide_nav', '_et_pb_side_nav', '_et_pb_show_title', '_et_pb_use_builder');
DELETE FROM wp_termmeta WHERE meta_key IN ('_et_pb_page_layout', '_et_single_title', '_et_pb_post_hide_nav', '_et_pb_side_nav', '_et_pb_show_title', '_et_pb_use_builder');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_et_pb_page_layout', '_et_single_title', '_et_pb_post_hide_nav', '_et_pb_side_nav', '_et_pb_show_title', '_et_pb_use_builder');

