-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_eds_Options', 'eds-framework-transient', 'eds-metabox-transient', 'cs-taxonomy-transient');
DELETE FROM wp_options WHERE option_name LIKE 'eds_term_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_menu_item_object_id', 'menu-item-font-awesome');
DELETE FROM wp_usermeta WHERE meta_key IN ('_menu_item_object_id', 'menu-item-font-awesome');
DELETE FROM wp_termmeta WHERE meta_key IN ('_menu_item_object_id', 'menu-item-font-awesome');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_menu_item_object_id', 'menu-item-font-awesome');

