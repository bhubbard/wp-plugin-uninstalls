#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gleap_role_migration_done'
wp option delete '_gleap_selected_roles_only'
wp option delete '_gleap_selected_roles|||0|value'
wp option delete '_gleap_frontend_selected_roles_only'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%|value'"
wp option delete '_gleap_admin_selected_roles_only'
wp option delete 'carbon_custom_sidebars'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
