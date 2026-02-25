-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('phayoune_ribbon_active', 'phayoune_ribbon_display_mode', 'phayoune_ribbon_specific_ids', 'phayoune_site_grayscale', 'phayoune_grayscale_display_mode', 'phayoune_grayscale_specific_ids', 'phayoune_ribbon_position', 'phayoune_ribbon_offset_x', 'phayoune_ribbon_offset_y', 'phayoune_ribbon_zindex', 'phayoune_ribbon_gap', 'phayoune_ribbon_img_url', 'phayoune_ribbon_link', 'phayoune_ribbon_width', 'phayoune_ribbon_anim_type', 'phayoune_ribbon_anim_speed', 'phayoune_ribbon2_active', 'phayoune_ribbon2_img_url', 'phayoune_ribbon2_link', 'phayoune_ribbon2_width', 'phayoune_ribbon2_anim_type', 'phayoune_ribbon2_anim_speed');

