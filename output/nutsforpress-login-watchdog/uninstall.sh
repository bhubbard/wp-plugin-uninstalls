#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_nfplwd_last_core_check'
wp option delete '_nfproot_plugins_settings'
wp option delete '_nfp_root_settings'
wp option delete '_nfp_settings'
wp option delete '_nfplwd_manually_core_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nfplwd_last_user_ip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nfplwd_last_user_ip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nfplwd_last_user_ip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nfplwd_last_user_ip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nfplwd_two_factors_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nfplwd_two_factors_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nfplwd_two_factors_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nfplwd_two_factors_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
