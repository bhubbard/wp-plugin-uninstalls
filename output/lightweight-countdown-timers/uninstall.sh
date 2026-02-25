#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'lwcd_installing'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lwcd_timer_deadline'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lwcd_timer_deadline'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lwcd_timer_deadline'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lwcd_timer_deadline'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lwcd_timer_format'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lwcd_timer_format'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lwcd_timer_format'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lwcd_timer_format'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lwcd_timer_units'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lwcd_timer_units'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lwcd_timer_units'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lwcd_timer_units'"
