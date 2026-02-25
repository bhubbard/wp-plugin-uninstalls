#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'selected-scripts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'selected-scripts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'selected-scripts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'selected-scripts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'selected-styles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'selected-styles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'selected-styles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'selected-styles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'template_file_js_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'template_file_js_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'template_file_js_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'template_file_js_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'template_file_css_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'template_file_css_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'template_file_css_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'template_file_css_url'"
