-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('slide_animation', 'slide_timeout', 'slide_link', 'slide_blog');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bg_slider');
DELETE FROM wp_usermeta WHERE meta_key IN ('bg_slider');
DELETE FROM wp_termmeta WHERE meta_key IN ('bg_slider');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bg_slider');

