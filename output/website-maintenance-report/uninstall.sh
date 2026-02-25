#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'managetoplevel_page_websmare_reportcolumnshidden'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'managetoplevel_page_websmare_reportcolumnshidden'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'managetoplevel_page_websmare_reportcolumnshidden'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'managetoplevel_page_websmare_reportcolumnshidden'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'elements_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'elements_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'elements_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'elements_per_page'"
