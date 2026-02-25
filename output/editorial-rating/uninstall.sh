#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_wpas_global_options'
wp option delete 'EditorialRatingPRO_lic_Key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wpas_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wpas_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wpas_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wpas_errors_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpas_er_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpas_er_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpas_er_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpas_er_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpas_er_byproduct_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpas_er_byproduct_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpas_er_byproduct_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpas_er_byproduct_options'"
