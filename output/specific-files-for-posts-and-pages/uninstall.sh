#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'specific-files_version'
wp option delete 'specific-files_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_specific-files_css_files'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_specific-files_css_files'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_specific-files_css_files'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_specific-files_css_files'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_specific-files_css_files_inline'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_specific-files_css_files_inline'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_specific-files_css_files_inline'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_specific-files_css_files_inline'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_specific-files_css_files_root'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_specific-files_css_files_root'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_specific-files_css_files_root'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_specific-files_css_files_root'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_specific-files_js_files'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_specific-files_js_files'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_specific-files_js_files'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_specific-files_js_files'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_specific-files_js_files_inline'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_specific-files_js_files_inline'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_specific-files_js_files_inline'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_specific-files_js_files_inline'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_specific-files_js_files_root'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_specific-files_js_files_root'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_specific-files_js_files_root'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_specific-files_js_files_root'"
