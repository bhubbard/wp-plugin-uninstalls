-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('filterable_portfolio');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_project_images', '_client_name', '_project_url', '_project_date', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_project_images', '_client_name', '_project_url', '_project_date', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_project_images', '_client_name', '_project_url', '_project_date', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_project_images', '_client_name', '_project_url', '_project_date', '_wp_attachment_image_alt');

