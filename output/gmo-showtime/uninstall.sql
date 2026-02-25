-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gmoshowtime-maintenance', 'gmoshowtime-page-types', 'gmoshowtime-transition', 'gmoshowtime-css-class', 'gmoshowtime-max-pages', 'gmoshowtime-image-size', 'gmoshowtime-apply-gallery', 'gmoshowtime-background-color', 'gmoshowtime-text-color');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_slide_link', '_thumbnail_id', '_slide_blank');
DELETE FROM wp_usermeta WHERE meta_key IN ('_slide_link', '_thumbnail_id', '_slide_blank');
DELETE FROM wp_termmeta WHERE meta_key IN ('_slide_link', '_thumbnail_id', '_slide_blank');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_slide_link', '_thumbnail_id', '_slide_blank');

