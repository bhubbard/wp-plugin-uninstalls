-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zci_options');
DELETE FROM wp_options WHERE option_name LIKE 'taxonomy_image_link%';
DELETE FROM wp_options WHERE option_name LIKE 'taxonomy_image_title%';
DELETE FROM wp_options WHERE option_name LIKE 'taxonomy_image_tab%';
DELETE FROM wp_options WHERE option_name LIKE 'z_taxonomy_image%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('adds_image', 'taxonomy_image_link', 'taxonomy_image_title', 'taxonomy_image_tab');
DELETE FROM wp_usermeta WHERE meta_key IN ('adds_image', 'taxonomy_image_link', 'taxonomy_image_title', 'taxonomy_image_tab');
DELETE FROM wp_termmeta WHERE meta_key IN ('adds_image', 'taxonomy_image_link', 'taxonomy_image_title', 'taxonomy_image_tab');
DELETE FROM wp_commentmeta WHERE meta_key IN ('adds_image', 'taxonomy_image_link', 'taxonomy_image_title', 'taxonomy_image_tab');

