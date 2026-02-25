#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'headspace_%'"
wp option delete 'headspace_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'headspace_cat_%'"
wp option delete 'headspace_version'
wp option delete 'headspace_global'
wp option delete 'headspace_attachment'
wp option delete 'headspace_page'
wp option delete 'headspace_post'
wp option delete 'headspace_404'
wp option delete 'headspace_category'
wp option delete 'headspace_author'
wp option delete 'headspace_home'
wp option delete 'headspace_front'
wp option delete 'headspace_search'
wp option delete 'headspace_tags'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'headspace_taxonomy_%'"
wp option delete 'headspace_taxonomy'
wp option delete 'headspace_archive'
wp option delete 'headspace_login'
wp option delete 'headspace2'
wp option delete 'headspace_keywords'
wp option delete 'headspace_dictionary'
wp option delete 'headspace_page_plugins'
wp option delete 'headspace_page_themes'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_headspace_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_headspace_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_headspace_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_headspace_%'"
