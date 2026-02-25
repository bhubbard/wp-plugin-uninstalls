#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pagespot_sidebar_container_id'
wp option delete 'pagespot_page_container_id'
wp option delete 'pagespot_post_templating'
wp option delete 'pagespot_db_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
