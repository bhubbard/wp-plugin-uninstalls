#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ttscj_enable_on_posts'
wp option delete 'ttscj_enable_on_pages'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ttscj_css_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ttscj_css_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ttscj_css_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ttscj_css_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ttscj_js_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ttscj_js_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ttscj_js_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ttscj_js_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ttscj_header_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ttscj_header_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ttscj_header_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ttscj_header_code'"
