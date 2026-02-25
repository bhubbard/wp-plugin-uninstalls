-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpnpg_gallery_title_display', 'wpnpg_gallery_title', 'wpnpg_auto_play', 'wpnpg_animation_type', 'wpnpg_control_nav', 'wpnpg_pause_hover', 'wpnpg_slide_loop', 'wpnpg_thumbnail_width', 'wpnpg_thumbnail_margin', 'WPNPG_Recent_Gallery', 'wpnpg_order', 'wpnpg', 'wpnpg_plugin_do_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpnpg_second_iamge', 'wpnpg_third_iamge', 'wpnpg_fourth_iamge', 'wpnpg_fifth_iamge', 'wpnpg_sixth_iamge');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpnpg_second_iamge', 'wpnpg_third_iamge', 'wpnpg_fourth_iamge', 'wpnpg_fifth_iamge', 'wpnpg_sixth_iamge');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpnpg_second_iamge', 'wpnpg_third_iamge', 'wpnpg_fourth_iamge', 'wpnpg_fifth_iamge', 'wpnpg_sixth_iamge');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpnpg_second_iamge', 'wpnpg_third_iamge', 'wpnpg_fourth_iamge', 'wpnpg_fifth_iamge', 'wpnpg_sixth_iamge');

