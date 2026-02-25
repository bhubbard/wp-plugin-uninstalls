-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('alobaidi_gallery_home', 'alobaidi_gallery_page', 'alobaidi_gallery_count', 'alobaidi_gallery_filter', 'alobaidi_gallery_sitename', 'alobaidi_gallery_tagline', 'alobaidi_gallery_facebook', 'alobaidi_gallery_twitter', 'alobaidi_gallery_instagram', 'alobaidi_gallery_favicon', 'alobaidi_gallery_bar', 'alobaidi_gallery_next', 'alobaidi_gallery_prev', 'alobaidi_gallery_setw', 'alobaidi_gallery_medw');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');

