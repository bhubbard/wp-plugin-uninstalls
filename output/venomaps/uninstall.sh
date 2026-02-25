#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'venomaps_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_review_notice_dismissed'"
wp option delete 'venomaps_activation_date'
wp option delete 'venomaps_review_notice_dismissed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'venomaps_routes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'venomaps_routes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'venomaps_routes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'venomaps_routes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'venomaps_marker'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'venomaps_marker'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'venomaps_marker'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'venomaps_marker'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'venomaps_lat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'venomaps_lat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'venomaps_lat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'venomaps_lat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'venomaps_lon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'venomaps_lon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'venomaps_lon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'venomaps_lon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'venomaps_style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'venomaps_style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'venomaps_style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'venomaps_style'"
