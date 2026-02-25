#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lrwp_layout_type'
wp option delete 'lrwp_smartspeed'
wp option delete 'lrwp_loop_value'
wp option delete 'lrwp_set_margin'
wp option delete 'lrwp_show_nav_true'
wp option delete 'lrwp_autoplay'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lrwp_cname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lrwp_cname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lrwp_cname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lrwp_cname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lrwp_cemail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lrwp_cemail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lrwp_cemail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lrwp_cemail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lrwp_compname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lrwp_compname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lrwp_compname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lrwp_compname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lrwp_comwebsite'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lrwp_comwebsite'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lrwp_comwebsite'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lrwp_comwebsite'"
