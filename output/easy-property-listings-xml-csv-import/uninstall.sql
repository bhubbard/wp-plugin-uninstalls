-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_ignore';
DELETE FROM wp_options WHERE option_name LIKE '%_notice_ignore';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('property_images_mod_date', 'property_images_mod_date_old', 'property_mod_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('property_images_mod_date', 'property_images_mod_date_old', 'property_mod_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('property_images_mod_date', 'property_images_mod_date_old', 'property_mod_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('property_images_mod_date', 'property_images_mod_date_old', 'property_mod_date');

