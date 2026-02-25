-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('realpress_db_version', 'sidebars_widgets', 'realpress_setup_wizard_completed');
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_become_an_agent_request';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_become_an_agent_request';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_become_an_agent_request';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_become_an_agent_request';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_property_average_review';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_property_average_review';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_property_average_review';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_property_average_review';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_my_wishlist';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_my_wishlist';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_my_wishlist';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_my_wishlist';

