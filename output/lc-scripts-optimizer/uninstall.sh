#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lcso_cache_times'
wp option delete 'lcso_enable'
wp option delete 'lcso_not_for_html'
wp option delete 'lcso_queued_scripts'
wp option delete 'lcso_queued_styles'
wp option delete 'lcso_js_filter'
wp option delete 'lcso_css_filter'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'lcso_ignored_%'"
wp option delete 'lcso_js_ignore'
wp option delete 'lcso_css_ignore'
wp option delete 'lcso_inl_js_ignore'
wp option delete 'lcso_tweak_htaccess'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ignore'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_filter'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_type'"

