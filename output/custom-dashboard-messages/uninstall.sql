-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_dash_roles', 'wp_dash_logo', 'wp_dash_logo_height', 'wp_dash_message', 'wp_dash_roles_normal', 'wp_dash_message_network', 'wp_remove_site_widgets', 'wp_remove_site_widgets_N', 'wp_remove_network_widgets', 'wp_remove_global_widgets');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cd_min_role_to_see');
DELETE FROM wp_usermeta WHERE meta_key IN ('cd_min_role_to_see');
DELETE FROM wp_termmeta WHERE meta_key IN ('cd_min_role_to_see');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cd_min_role_to_see');

