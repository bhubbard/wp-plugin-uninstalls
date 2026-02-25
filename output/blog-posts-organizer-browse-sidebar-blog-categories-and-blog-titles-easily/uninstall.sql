-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_atw_custom_title', 'category_icon', 'atw_category_order', 'atw_category_show');
DELETE FROM wp_usermeta WHERE meta_key IN ('_atw_custom_title', 'category_icon', 'atw_category_order', 'atw_category_show');
DELETE FROM wp_termmeta WHERE meta_key IN ('_atw_custom_title', 'category_icon', 'atw_category_order', 'atw_category_show');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_atw_custom_title', 'category_icon', 'atw_category_order', 'atw_category_show');

