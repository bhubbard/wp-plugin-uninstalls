-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aura_thumb_site_url', 'aura_thumb_site_backcolor', 'aura_thumb_site_effect', 'aura_thumb_site_speed', 'aura_thumb_site_opacity', 'aura_thumb_site_img_width', 'aura_thumb_site_img_border', 'aura_thumb_site_border_color', 'aura_thumb_site_img_space', 'aura_thumb_site_title_size');

