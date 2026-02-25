-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('breadcrumb_after_home_title', 'breadcrumb_after_home_link', 'breadcrumb_title', 'breadcrumb_link');
DELETE FROM wp_usermeta WHERE meta_key IN ('breadcrumb_after_home_title', 'breadcrumb_after_home_link', 'breadcrumb_title', 'breadcrumb_link');
DELETE FROM wp_termmeta WHERE meta_key IN ('breadcrumb_after_home_title', 'breadcrumb_after_home_link', 'breadcrumb_title', 'breadcrumb_link');
DELETE FROM wp_commentmeta WHERE meta_key IN ('breadcrumb_after_home_title', 'breadcrumb_after_home_link', 'breadcrumb_title', 'breadcrumb_link');

