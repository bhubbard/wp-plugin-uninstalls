#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'css_js_files_css_links'
wp option delete 'css_js_files_css_files'
wp option delete 'css_js_files_css_rules'
wp option delete 'css_js_files_css_admin'
wp option delete 'css_js_files_js_links'
wp option delete 'css_js_files_js_files'
wp option delete 'css_js_files_js_rules'
wp option delete 'css_js_files_js_admin'
wp option delete 'css_js_files_head_rules'
wp option delete 'css_js_files_body_rules'
wp option delete 'css_js_files_footer_rules'
wp option delete 'css_js_files_path'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_rules'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_links'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_files'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_admin'"
wp option delete 'css_js_files_timestamp'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_links'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_links'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_links'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_links'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_files'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_files'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_files'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_files'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_rules'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_rules'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_rules'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_rules'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'css_js_files_css_links'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'css_js_files_css_links'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'css_js_files_css_links'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'css_js_files_css_links'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'css_js_files_css_files'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'css_js_files_css_files'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'css_js_files_css_files'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'css_js_files_css_files'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'css_js_files_css_rules'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'css_js_files_css_rules'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'css_js_files_css_rules'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'css_js_files_css_rules'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'css_js_files_js_links'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'css_js_files_js_links'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'css_js_files_js_links'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'css_js_files_js_links'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'css_js_files_js_files'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'css_js_files_js_files'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'css_js_files_js_files'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'css_js_files_js_files'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'css_js_files_js_rules'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'css_js_files_js_rules'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'css_js_files_js_rules'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'css_js_files_js_rules'"
