-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_graphql_version', 'recently_activated', 'menu_items', 'graphql_experiments_settings', 'rewrite_rules', 'wpgraphql_incompatible_plugins', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpgraphql_dismissed_admin_notices', '_wp_attachment_image_alt', '_edit_last', '_wp_desired_post_slug', '_edit_lock', '_menu_item_object_id', '_menu_item_type', 'enclosure', '_wp_page_template', 'show_admin_bar_front', '_wp_attached_file');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpgraphql_dismissed_admin_notices', '_wp_attachment_image_alt', '_edit_last', '_wp_desired_post_slug', '_edit_lock', '_menu_item_object_id', '_menu_item_type', 'enclosure', '_wp_page_template', 'show_admin_bar_front', '_wp_attached_file');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpgraphql_dismissed_admin_notices', '_wp_attachment_image_alt', '_edit_last', '_wp_desired_post_slug', '_edit_lock', '_menu_item_object_id', '_menu_item_type', 'enclosure', '_wp_page_template', 'show_admin_bar_front', '_wp_attached_file');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpgraphql_dismissed_admin_notices', '_wp_attachment_image_alt', '_edit_last', '_wp_desired_post_slug', '_edit_lock', '_menu_item_object_id', '_menu_item_type', 'enclosure', '_wp_page_template', 'show_admin_bar_front', '_wp_attached_file');

