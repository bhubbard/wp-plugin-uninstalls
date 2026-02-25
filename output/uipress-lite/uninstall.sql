-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'uip-global-settings', 'uipress-cache-key', 'uip-master-menu');
DELETE FROM wp_options WHERE option_name LIKE 'uip_template_active_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('uip-prefs', 'uip_menu_settings', 'uip-uid', 'uip-template-for-roles', 'uip-template-for-users', 'uip-template-excludes-roles', 'uip-template-excludes-users', 'uip-template-settings', 'uip-pattern-template', 'uip-pattern-type', 'uip-pattern-description', 'uip-pattern-icon', 'uip-ui-template', 'uip-template-type', 'uip-template-subsites', 'uip-menu-for-roles', 'uip-menu-for-users', 'uip-menu-excludes-roles', 'uip-menu-excludes-users');
DELETE FROM wp_usermeta WHERE meta_key IN ('uip-prefs', 'uip_menu_settings', 'uip-uid', 'uip-template-for-roles', 'uip-template-for-users', 'uip-template-excludes-roles', 'uip-template-excludes-users', 'uip-template-settings', 'uip-pattern-template', 'uip-pattern-type', 'uip-pattern-description', 'uip-pattern-icon', 'uip-ui-template', 'uip-template-type', 'uip-template-subsites', 'uip-menu-for-roles', 'uip-menu-for-users', 'uip-menu-excludes-roles', 'uip-menu-excludes-users');
DELETE FROM wp_termmeta WHERE meta_key IN ('uip-prefs', 'uip_menu_settings', 'uip-uid', 'uip-template-for-roles', 'uip-template-for-users', 'uip-template-excludes-roles', 'uip-template-excludes-users', 'uip-template-settings', 'uip-pattern-template', 'uip-pattern-type', 'uip-pattern-description', 'uip-pattern-icon', 'uip-ui-template', 'uip-template-type', 'uip-template-subsites', 'uip-menu-for-roles', 'uip-menu-for-users', 'uip-menu-excludes-roles', 'uip-menu-excludes-users');
DELETE FROM wp_commentmeta WHERE meta_key IN ('uip-prefs', 'uip_menu_settings', 'uip-uid', 'uip-template-for-roles', 'uip-template-for-users', 'uip-template-excludes-roles', 'uip-template-excludes-users', 'uip-template-settings', 'uip-pattern-template', 'uip-pattern-type', 'uip-pattern-description', 'uip-pattern-icon', 'uip-ui-template', 'uip-template-type', 'uip-template-subsites', 'uip-menu-for-roles', 'uip-menu-for-users', 'uip-menu-excludes-roles', 'uip-menu-excludes-users');

