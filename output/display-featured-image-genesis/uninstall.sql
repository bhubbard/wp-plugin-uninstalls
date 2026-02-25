-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('displayfeaturedimagegenesis', 'sendimagesrss', 'sendimagesrss_simplify_feed', 'sendimagesrss_alternate_feed', 'displayfeaturedimagegenesis_updatedterms');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_displayfeaturedimagegenesis_disable', 'displayfeaturedimagegenesis', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_displayfeaturedimagegenesis_disable', 'displayfeaturedimagegenesis', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_displayfeaturedimagegenesis_disable', 'displayfeaturedimagegenesis', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_displayfeaturedimagegenesis_disable', 'displayfeaturedimagegenesis', '_wp_attachment_image_alt');

