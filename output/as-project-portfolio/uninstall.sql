-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_project_description', '_project_client', '_project_date', '_project_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_project_description', '_project_client', '_project_date', '_project_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_project_description', '_project_client', '_project_date', '_project_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_project_description', '_project_client', '_project_date', '_project_url');

