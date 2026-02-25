-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('restrictly_content_types', 'restrictly_always_allow_admins', 'restrictly_enable_menu_flags', 'restrictly_default_action', 'restrictly_default_message', 'restrictly_default_forward_url', 'restrictly_show_nav_pills', 'restrictly_mismatch_flag');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('restrictly_page_access_by_login_status', 'restrictly_page_access_by_role', 'restrictly_enforcement_action', 'restrictly_custom_message', 'restrictly_custom_forward_url', '_restrictly_visibility', '_restrictly_roles', 'restrictly_menu_visibility', 'restrictly_menu_roles', '_restrictly_menu_visibility');
DELETE FROM wp_usermeta WHERE meta_key IN ('restrictly_page_access_by_login_status', 'restrictly_page_access_by_role', 'restrictly_enforcement_action', 'restrictly_custom_message', 'restrictly_custom_forward_url', '_restrictly_visibility', '_restrictly_roles', 'restrictly_menu_visibility', 'restrictly_menu_roles', '_restrictly_menu_visibility');
DELETE FROM wp_termmeta WHERE meta_key IN ('restrictly_page_access_by_login_status', 'restrictly_page_access_by_role', 'restrictly_enforcement_action', 'restrictly_custom_message', 'restrictly_custom_forward_url', '_restrictly_visibility', '_restrictly_roles', 'restrictly_menu_visibility', 'restrictly_menu_roles', '_restrictly_menu_visibility');
DELETE FROM wp_commentmeta WHERE meta_key IN ('restrictly_page_access_by_login_status', 'restrictly_page_access_by_role', 'restrictly_enforcement_action', 'restrictly_custom_message', 'restrictly_custom_forward_url', '_restrictly_visibility', '_restrictly_roles', 'restrictly_menu_visibility', 'restrictly_menu_roles', '_restrictly_menu_visibility');

