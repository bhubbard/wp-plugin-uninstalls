#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'd3_custom_javascript_ver'
wp option delete 'd3_custom_css_ver'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_minify'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ver'"

