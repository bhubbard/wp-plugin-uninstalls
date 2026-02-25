#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tdd_pb_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tdd_pb_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tdd_pb_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tdd_pb_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tdd_pb_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tdd_pb_input_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tdd_pb_input_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tdd_pb_input_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tdd_pb_input_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tdd_pb_percentage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tdd_pb_percentage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tdd_pb_percentage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tdd_pb_percentage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tdd_pb_custom_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tdd_pb_custom_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tdd_pb_custom_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tdd_pb_custom_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tdd_pb_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tdd_pb_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tdd_pb_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tdd_pb_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tdd_pb_end'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tdd_pb_end'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tdd_pb_end'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tdd_pb_end'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tdd_pb_percentage_display'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tdd_pb_percentage_display'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tdd_pb_percentage_display'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tdd_pb_percentage_display'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tdd_pb_xofy_display'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tdd_pb_xofy_display'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tdd_pb_xofy_display'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tdd_pb_xofy_display'"
