#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_linker_redirect'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_linker_redirect'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_linker_redirect'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_linker_redirect'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_linker_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_linker_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_linker_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_linker_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_linker_query_params'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_linker_query_params'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_linker_query_params'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_linker_query_params'"
