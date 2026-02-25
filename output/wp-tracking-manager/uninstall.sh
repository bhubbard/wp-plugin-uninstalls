#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wtm_header_script_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wtm_footer_script_%'"
wp option delete 'wtm_header_script'
wp option delete 'wtm_footer_script'
wp option delete 'wtm_enable'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wtm_page_header'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wtm_page_header'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wtm_page_header'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wtm_page_header'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wtm_page_thank_you'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wtm_page_thank_you'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wtm_page_thank_you'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wtm_page_thank_you'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wtm_page_footer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wtm_page_footer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wtm_page_footer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wtm_page_footer'"
