-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('misgallerydata', 'mis_gallery', 'mis_global_trans', 'mis_easing', 'mis_align', 'mis_height', 'mis_width', 'mis_controls', 'mis_focus', 'mis_nav', 'mis_autoplay', 'mis_navkey', 'mis_fullscreen', 'mis_random', 'mis_stopover', 'mis_lrnav', 'mis_preview', 'mis_progressbar', 'mis_label', 'mis_interval', 'mis_velocity');
DELETE FROM wp_usermeta WHERE meta_key IN ('misgallerydata', 'mis_gallery', 'mis_global_trans', 'mis_easing', 'mis_align', 'mis_height', 'mis_width', 'mis_controls', 'mis_focus', 'mis_nav', 'mis_autoplay', 'mis_navkey', 'mis_fullscreen', 'mis_random', 'mis_stopover', 'mis_lrnav', 'mis_preview', 'mis_progressbar', 'mis_label', 'mis_interval', 'mis_velocity');
DELETE FROM wp_termmeta WHERE meta_key IN ('misgallerydata', 'mis_gallery', 'mis_global_trans', 'mis_easing', 'mis_align', 'mis_height', 'mis_width', 'mis_controls', 'mis_focus', 'mis_nav', 'mis_autoplay', 'mis_navkey', 'mis_fullscreen', 'mis_random', 'mis_stopover', 'mis_lrnav', 'mis_preview', 'mis_progressbar', 'mis_label', 'mis_interval', 'mis_velocity');
DELETE FROM wp_commentmeta WHERE meta_key IN ('misgallerydata', 'mis_gallery', 'mis_global_trans', 'mis_easing', 'mis_align', 'mis_height', 'mis_width', 'mis_controls', 'mis_focus', 'mis_nav', 'mis_autoplay', 'mis_navkey', 'mis_fullscreen', 'mis_random', 'mis_stopover', 'mis_lrnav', 'mis_preview', 'mis_progressbar', 'mis_label', 'mis_interval', 'mis_velocity');

