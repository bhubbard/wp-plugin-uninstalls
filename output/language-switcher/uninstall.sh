#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%detect_browser_language'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%default_language_urls'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%language_taxonomies'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%language_post_types'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%active_languages'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%add_switcher_to_menus'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%switcher_title'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%custom_title'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%language_switcher'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%language_switcher'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%language_switcher'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%language_switcher'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%main_language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%main_language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%main_language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%main_language'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'language_switcher'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'language_switcher'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'language_switcher'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'language_switcher'"
