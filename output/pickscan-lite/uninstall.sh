#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ps_lite_param'
wp option delete 'pickli_params'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'psl_zone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'psl_zone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'psl_zone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'psl_zone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'psl_allee'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'psl_allee'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'psl_allee'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'psl_allee'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'psl_emplacement'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'psl_emplacement'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'psl_emplacement'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'psl_emplacement'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'psl_etagere'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'psl_etagere'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'psl_etagere'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'psl_etagere'"
