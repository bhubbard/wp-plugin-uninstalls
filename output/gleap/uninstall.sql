-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gleap_role_migration_done', '_gleap_selected_roles_only', '_gleap_selected_roles|||0|value', '_gleap_frontend_selected_roles_only', '_gleap_admin_selected_roles_only', 'carbon_custom_sidebars');
DELETE FROM wp_options WHERE option_name LIKE '%|value';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template');

