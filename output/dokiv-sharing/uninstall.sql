-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('menu-item-dokiv_sharing_link_field', 'menu-item-dokiv_sharing_bgcolor_field', 'menu-item-dokiv_sharing_width_field');
DELETE FROM wp_usermeta WHERE meta_key IN ('menu-item-dokiv_sharing_link_field', 'menu-item-dokiv_sharing_bgcolor_field', 'menu-item-dokiv_sharing_width_field');
DELETE FROM wp_termmeta WHERE meta_key IN ('menu-item-dokiv_sharing_link_field', 'menu-item-dokiv_sharing_bgcolor_field', 'menu-item-dokiv_sharing_width_field');
DELETE FROM wp_commentmeta WHERE meta_key IN ('menu-item-dokiv_sharing_link_field', 'menu-item-dokiv_sharing_bgcolor_field', 'menu-item-dokiv_sharing_width_field');

