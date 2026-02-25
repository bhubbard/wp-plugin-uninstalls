#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'csf_demo_mode'
wp option delete 'MRTB'
wp option delete 'ouop'
wp option delete 'mrtb_tsp'
wp option delete 'mrtb_ip'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_csf_errors'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_csf_errors'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_csf_errors'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_csf_errors'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'post_image_host_switch'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'post_image_host_switch'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'post_image_host_switch'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'post_image_host_switch'"
