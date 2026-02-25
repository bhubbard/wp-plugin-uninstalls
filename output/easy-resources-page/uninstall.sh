#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'erp-button-background'
wp option delete 'erp-button-color'
wp option delete 'erp-dropdown-background'
wp option delete 'erp-panel-background'
wp option delete 'erp-panel-color'
wp option delete 'erp-link-css-class'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
