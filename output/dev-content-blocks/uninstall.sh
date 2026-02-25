#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dc_dcb_html'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dc_dcb_html'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dc_dcb_html'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dc_dcb_html'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dc_dcb_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dc_dcb_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dc_dcb_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dc_dcb_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dc_dcb_js'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dc_dcb_js'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dc_dcb_js'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dc_dcb_js'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dc_dcb_show_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dc_dcb_show_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dc_dcb_show_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dc_dcb_show_post'"
