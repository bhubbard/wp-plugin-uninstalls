-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('slideshow-jquery-image-gallery-updated-from-v2-2-17-to-v2-2-20', 'slideshow-jquery-image-gallery-updated-from-v2-2-16-to-v2-2-17', 'slideshow-jquery-image-gallery-updated-from-v2-2-12-to-v2-2-16', 'slideshow-jquery-image-gallery-updated-from-v2-2-8-to-v2-2-12', 'slideshow-jquery-image-gallery-updated-from-v2-2-0-to-v2-2-8', 'slideshow-jquery-image-gallery-updated-from-v2-1-23-to-v2-2-0', 'slideshow-jquery-image-gallery-updated-from-v2-1-20-to-v2-1-23', 'slideshow-jquery-image-gallery-updated-from-v2-1-20-to-v2-1-22', 'slideshow-plugin-updated-from-v2-to-v2-1-20', 'slideshow-plugin-updated-from-v1-x-x-to-v2-0-1');
DELETE FROM wp_options WHERE option_name LIKE '%_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('settings', 'styleSettings');
DELETE FROM wp_usermeta WHERE meta_key IN ('settings', 'styleSettings');
DELETE FROM wp_termmeta WHERE meta_key IN ('settings', 'styleSettings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('settings', 'styleSettings');

