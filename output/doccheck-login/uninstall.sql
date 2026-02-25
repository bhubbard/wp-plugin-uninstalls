-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dcl_general_profession_routing_active', 'dcl_general_add_profession_routing', 'dcl_general_hide_menu_items', 'dcl_general_login_id_debug', 'dcl_client_secret_debug', 'dcl_general_login_id', 'dcl_client_secret', 'dcl_general_jobs', 'dcl_general_pages', 'dcl_form_size', 'dcl_form_language', 'dcl_form_custom_template', 'dcl_form_custom_template_width', 'dcl_form_custom_template_height', 'dcl_general_set_language_by_wpml', 'dcl_general_login_page_id', 'dcl_general_redirect_page_id', 'dcl_general_professional_circles_page_id');
DELETE FROM wp_options WHERE option_name LIKE 'dcl_general_jobs%';
DELETE FROM wp_options WHERE option_name LIKE 'dcl_general_pages%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dcl_group_routing', 'dcl_restrict_access', 'dcl_all_group');
DELETE FROM wp_usermeta WHERE meta_key IN ('dcl_group_routing', 'dcl_restrict_access', 'dcl_all_group');
DELETE FROM wp_termmeta WHERE meta_key IN ('dcl_group_routing', 'dcl_restrict_access', 'dcl_all_group');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dcl_group_routing', 'dcl_restrict_access', 'dcl_all_group');

