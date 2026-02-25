-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hybrid-slideshow-option-width', 'hybrid-slideshow-option-height', 'hybrid-slideshow-option-delay', 'hybrid-slideshow-option-transition', 'hybrid-slideshow-option-random', 'hybrid-slideshow-option-javascript', 'hybrid-slideshow-option-images', 'hybrid-slideshow-option-width-prev', 'hybrid-slideshow-option-height-prev');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');

