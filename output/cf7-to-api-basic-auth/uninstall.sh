#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qs_cf7_api_notices_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qs_cf7_api_debug_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qs_cf7_api_debug_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qs_cf7_api_debug_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qs_cf7_api_debug_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qs_cf7_api_debug_result'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qs_cf7_api_debug_result'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qs_cf7_api_debug_result'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qs_cf7_api_debug_result'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qs_cf7_api_debug_params'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qs_cf7_api_debug_params'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qs_cf7_api_debug_params'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qs_cf7_api_debug_params'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'api_errors'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'api_errors'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'api_errors'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'api_errors'"
