-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aura_recent_photos_user', 'aura_recent_photos_total_images', 'aura_recent_photos_backcolor', 'aura_recent_photos_img_width', 'aura_recent_photos_img_border', 'aura_recent_photos_border_color', 'aura_recent_photos_img_space');

