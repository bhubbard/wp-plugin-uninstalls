#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'csfpp_show_notice_now'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'csfpp_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'csfpp_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'csfpp_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'csfpp_avatar'"
