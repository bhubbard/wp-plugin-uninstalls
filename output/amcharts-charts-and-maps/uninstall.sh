#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'amcharts_options'
wp option delete 'amcharts_activated'
wp option delete 'amcharts_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amcharts_resources'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amcharts_resources'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amcharts_resources'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amcharts_resources'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amcharts_html'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amcharts_html'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amcharts_html'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amcharts_html'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amcharts_javascript'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amcharts_javascript'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amcharts_javascript'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amcharts_javascript'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amcharts_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amcharts_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amcharts_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amcharts_slug'"
