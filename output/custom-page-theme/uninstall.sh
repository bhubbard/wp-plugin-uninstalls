#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_sch'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_js'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_css'"
wp option delete '_cpt_cpt-sample-menu_sch'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_cpt_pg_content_template_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom_page_theme_select'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom_page_theme_select'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom_page_theme_select'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom_page_theme_select'"
