-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gvpb_border_color', 'gvpb_border_width', 'gvpb_button_color', 'gvpb_label_color', 'gvpb_border_radius', 'gvpb_delay', 'gvpb_animation', 'gvpb_speedOldImgAnim', 'gvpb_speedNewImgAnim', 'gvpb_OldImgAnim', 'gvpb_NewImgAnim');

