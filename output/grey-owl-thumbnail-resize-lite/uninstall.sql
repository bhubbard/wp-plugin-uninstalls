-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gotrl_check_images_in_page');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '%_crop';
DELETE FROM wp_options WHERE option_name LIKE 'gotrl_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gotr_metadata');
DELETE FROM wp_usermeta WHERE meta_key IN ('gotr_metadata');
DELETE FROM wp_termmeta WHERE meta_key IN ('gotr_metadata');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gotr_metadata');

