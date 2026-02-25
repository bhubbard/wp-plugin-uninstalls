-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpgatsby_settings', '_gatsby_tracked_post_types', '_gatsby_tracked_taxonomies', 'test_option', 'test_transient');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('action_type', 'referenced_node_status', '_gatsby_preview_data', 'referenced_node_id', 'referenced_node_relay_id', 'referenced_node_single_name', 'referenced_node_plural_name', '_wpgatsby_page_path', '_wpgatsby_node_modified', '_wpgatsby_node_remote_preview_status', '_wpgatsby_node_remote_preview_status_context', 'test_post_meta', 'test_meta', 'test_key', 'description', 'show_admin_bar_front', 'nickname', 'test');
DELETE FROM wp_usermeta WHERE meta_key IN ('action_type', 'referenced_node_status', '_gatsby_preview_data', 'referenced_node_id', 'referenced_node_relay_id', 'referenced_node_single_name', 'referenced_node_plural_name', '_wpgatsby_page_path', '_wpgatsby_node_modified', '_wpgatsby_node_remote_preview_status', '_wpgatsby_node_remote_preview_status_context', 'test_post_meta', 'test_meta', 'test_key', 'description', 'show_admin_bar_front', 'nickname', 'test');
DELETE FROM wp_termmeta WHERE meta_key IN ('action_type', 'referenced_node_status', '_gatsby_preview_data', 'referenced_node_id', 'referenced_node_relay_id', 'referenced_node_single_name', 'referenced_node_plural_name', '_wpgatsby_page_path', '_wpgatsby_node_modified', '_wpgatsby_node_remote_preview_status', '_wpgatsby_node_remote_preview_status_context', 'test_post_meta', 'test_meta', 'test_key', 'description', 'show_admin_bar_front', 'nickname', 'test');
DELETE FROM wp_commentmeta WHERE meta_key IN ('action_type', 'referenced_node_status', '_gatsby_preview_data', 'referenced_node_id', 'referenced_node_relay_id', 'referenced_node_single_name', 'referenced_node_plural_name', '_wpgatsby_page_path', '_wpgatsby_node_modified', '_wpgatsby_node_remote_preview_status', '_wpgatsby_node_remote_preview_status_context', 'test_post_meta', 'test_meta', 'test_key', 'description', 'show_admin_bar_front', 'nickname', 'test');

