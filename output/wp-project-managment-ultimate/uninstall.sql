-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wppm_project_meta', '_wppm_custom_sort', '_wppm_custom_sort_end_date', '_wppm_custom_sort_paid', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wppm_project_meta', '_wppm_custom_sort', '_wppm_custom_sort_end_date', '_wppm_custom_sort_paid', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wppm_project_meta', '_wppm_custom_sort', '_wppm_custom_sort_end_date', '_wppm_custom_sort_paid', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wppm_project_meta', '_wppm_custom_sort', '_wppm_custom_sort_end_date', '_wppm_custom_sort_paid', '_thumbnail_id');

