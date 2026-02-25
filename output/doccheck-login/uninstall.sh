#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dcl_general_profession_routing_active'
wp option delete 'dcl_general_add_profession_routing'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'dcl_general_jobs%'"
wp option delete 'dcl_general_hide_menu_items'
wp option delete 'dcl_general_login_id_debug'
wp option delete 'dcl_client_secret_debug'
wp option delete 'dcl_general_login_id'
wp option delete 'dcl_client_secret'
wp option delete 'dcl_general_jobs'
wp option delete 'dcl_general_pages'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'dcl_general_pages%'"
wp option delete 'dcl_form_size'
wp option delete 'dcl_form_language'
wp option delete 'dcl_form_custom_template'
wp option delete 'dcl_form_custom_template_width'
wp option delete 'dcl_form_custom_template_height'
wp option delete 'dcl_general_set_language_by_wpml'
wp option delete 'dcl_general_login_page_id'
wp option delete 'dcl_general_redirect_page_id'
wp option delete 'dcl_general_professional_circles_page_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dcl_group_routing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dcl_group_routing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dcl_group_routing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dcl_group_routing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dcl_restrict_access'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dcl_restrict_access'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dcl_restrict_access'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dcl_restrict_access'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dcl_all_group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dcl_all_group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dcl_all_group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dcl_all_group'"
