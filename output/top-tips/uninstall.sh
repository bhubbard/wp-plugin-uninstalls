#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'giltoptips_image'
wp option delete 'giltoptips_bg_colour'
wp option delete 'giltoptips_h_colour'
wp option delete 'giltoptips_txt_colour'
wp option delete 'giltoptips_a_colour'
wp option delete 'giltoptips_ahov_colour'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_giltoptips_url_value_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_giltoptips_url_value_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_giltoptips_url_value_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_giltoptips_url_value_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gil_top_tips_url_value_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gil_top_tips_url_value_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gil_top_tips_url_value_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gil_top_tips_url_value_key'"
