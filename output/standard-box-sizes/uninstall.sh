#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'box_sizing_packaging_solution_preference'
wp option delete 'suspend_automatic_detection_of_box_sizing'
wp option delete 'en_trial_3dbin_flag'
wp option delete 'subscription_packages_response'
wp option delete 'box_sizing_optimization_mode'
wp option delete 'en_3dbin_message'
wp option delete 'en_3dbin_message_status'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'box_sizing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'box_sizing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'box_sizing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'box_sizing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'or_box_sizing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'or_box_sizing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'or_box_sizing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'or_box_sizing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_en_rot_ver'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_en_rot_ver'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_en_rot_ver'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_en_rot_ver'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_en_own_pack'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_en_own_pack'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_en_own_pack'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_en_own_pack'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_en_multiple_packages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_en_multiple_packages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_en_multiple_packages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_en_multiple_packages'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'en_multi_packaging'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'en_multi_packaging'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'en_multi_packaging'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'en_multi_packaging'"
