#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hiiwaterwheel_version'

# Delete Transients
wp transient delete '_hiiwaterwheel_activation_redirect'
wp transient delete 'hiiwaterwheel_addons_html'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hii_ww_slide'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hii_ww_slide'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hii_ww_slide'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hii_ww_slide'"
