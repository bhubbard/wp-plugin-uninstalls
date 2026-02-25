-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('project_information_project_url', 'project_information_short_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('project_information_project_url', 'project_information_short_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('project_information_project_url', 'project_information_short_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('project_information_project_url', 'project_information_short_description');

