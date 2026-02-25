#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ibbac_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ibbac_meta_box_optout_before'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ibbac_meta_box_optout_before'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ibbac_meta_box_optout_before'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ibbac_meta_box_optout_before'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ibbac_meta_box_optout_after'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ibbac_meta_box_optout_after'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ibbac_meta_box_optout_after'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ibbac_meta_box_optout_after'"
