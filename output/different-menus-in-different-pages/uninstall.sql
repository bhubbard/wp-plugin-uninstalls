-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('different_menus_for_different_page', 'recorp_settings', 'dmidp_notices_clicked_data', 'elementor_pro_theme_builder_conditions', 'recorp_different_menu_activation_check', 'dmidp_notices');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_menu_item_menu_item_parent', '_who_will_see_the_link', '_different_menu_user_role', '_different_menu_user_roles', '_user_avatar', '_user_avatar_border_radius_type', '_user_avatar_border_radius', '_different_menu_redirect_after', '_redirect_after_to_custom_url', '_elementor_data', 'different_menu');
DELETE FROM wp_usermeta WHERE meta_key IN ('_menu_item_menu_item_parent', '_who_will_see_the_link', '_different_menu_user_role', '_different_menu_user_roles', '_user_avatar', '_user_avatar_border_radius_type', '_user_avatar_border_radius', '_different_menu_redirect_after', '_redirect_after_to_custom_url', '_elementor_data', 'different_menu');
DELETE FROM wp_termmeta WHERE meta_key IN ('_menu_item_menu_item_parent', '_who_will_see_the_link', '_different_menu_user_role', '_different_menu_user_roles', '_user_avatar', '_user_avatar_border_radius_type', '_user_avatar_border_radius', '_different_menu_redirect_after', '_redirect_after_to_custom_url', '_elementor_data', 'different_menu');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_menu_item_menu_item_parent', '_who_will_see_the_link', '_different_menu_user_role', '_different_menu_user_roles', '_user_avatar', '_user_avatar_border_radius_type', '_user_avatar_border_radius', '_different_menu_redirect_after', '_redirect_after_to_custom_url', '_elementor_data', 'different_menu');

