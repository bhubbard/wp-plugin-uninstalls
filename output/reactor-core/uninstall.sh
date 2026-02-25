#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'json_api_plugin_version'
wp option delete 'site_admins'

# Delete Transients
wp transient delete 'json_testhelper_coverage'
wp transient delete 'reactor_activate'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'reactor_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'reactor_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'reactor_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'reactor_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_app_image_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_app_image_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_app_image_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_app_image_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_app_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_app_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_app_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_app_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'testkey'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'testkey'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'testkey'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'testkey'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_testkey'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_testkey'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_testkey'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_testkey'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'testotherkey'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'testotherkey'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'testotherkey'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'testotherkey'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'testnewkey'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'testnewkey'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'testnewkey'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'testnewkey'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_testnewkey'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_testnewkey'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_testnewkey'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_testnewkey'"
