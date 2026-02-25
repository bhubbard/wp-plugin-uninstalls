-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lukianai_feedbacks', 'lukianai_options', 'lukianai_credit_options', 'lukianai_enhancements');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('fave_property_images');
DELETE FROM wp_usermeta WHERE meta_key IN ('fave_property_images');
DELETE FROM wp_termmeta WHERE meta_key IN ('fave_property_images');
DELETE FROM wp_commentmeta WHERE meta_key IN ('fave_property_images');

