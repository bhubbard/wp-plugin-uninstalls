#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'timezone_option'
wp option delete 'hidemenu_option'
wp option delete 'columns_option'
wp option delete 'disable_style'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'data_nec_events'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'data_nec_events'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'data_nec_events'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'data_nec_events'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'link_nec_events'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'link_nec_events'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'link_nec_events'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'link_nec_events'"
