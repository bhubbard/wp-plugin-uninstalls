#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcv_label'
wp option delete 'wpcv_label_color'
wp option delete 'wpcv_label_voted'
wp option delete 'wpcv_label_color_voted'
wp option delete 'wpcv_pagetop'
wp option delete 'wpcv_pagebottom'
wp option delete 'wpcv_postonly'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcvotes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcvotes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcvotes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcvotes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcvoters'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcvoters'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcvoters'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcvoters'"
