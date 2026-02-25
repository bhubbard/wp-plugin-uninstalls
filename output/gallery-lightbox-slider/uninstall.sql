-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('activated_glg_plugin', 'glg_gallery_active', 'glg_gallery_autoplay', 'ecf_slide_every', 'glg_gallery_thumbnails', 'glg_gallery_overlay_color', 'glg_gallery_show_captions', 'glg_gallery_fancy_caption', 'glg_trial_notify', 'glg_premium_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('glg_meta_options');
DELETE FROM wp_usermeta WHERE meta_key IN ('glg_meta_options');
DELETE FROM wp_termmeta WHERE meta_key IN ('glg_meta_options');
DELETE FROM wp_commentmeta WHERE meta_key IN ('glg_meta_options');

