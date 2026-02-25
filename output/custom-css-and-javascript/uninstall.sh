#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hm_custom_javascript_ver'
wp option delete 'hm_custom_css_ver'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_minify'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ver'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_first_activate'"
wp option delete 'hm_custom_css_js_rd_notice_hidden'
wp option delete 'hm_custom_css_js_first_activate'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_rd_notice_hidden'"
wp option delete 'hm_custom_javascript_minify'
wp option delete 'hm_custom_css_minify'

