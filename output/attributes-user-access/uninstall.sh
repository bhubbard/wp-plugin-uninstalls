#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'attrua_pages_options'
wp option delete 'attrua_redirect_options'
wp option delete 'attrua_version'
wp option delete 'attrua_schema_version'
wp option delete 'attrua_options'
wp option delete 'attrua_pro_user_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_attrua_page_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_attrua_page_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_attrua_page_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_attrua_page_type'"
