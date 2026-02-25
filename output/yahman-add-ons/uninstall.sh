#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yahman_addons'
wp option delete 'yahman_addons_version'
wp option delete 'yahman_addons_external_cache'
wp option delete 'yahman_addons_count'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ya_amp_cache_%' OR option_name LIKE '_site_transient_ya_amp_cache_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ya_faster_cache_%' OR option_name LIKE '_site_transient_ya_faster_cache_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ya_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ya_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ya_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ya_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yahman_addons_delete_function_notice_dismiss'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yahman_addons_delete_function_notice_dismiss'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yahman_addons_delete_function_notice_dismiss'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yahman_addons_delete_function_notice_dismiss'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_yahman_addons_pv_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_yahman_addons_pv_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_yahman_addons_pv_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_yahman_addons_pv_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_yahman_addons_coverage_period_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_yahman_addons_coverage_period_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_yahman_addons_coverage_period_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_yahman_addons_coverage_period_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%all'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%all'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%all'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%all'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yahman_addons_social_user_profile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yahman_addons_social_user_profile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yahman_addons_social_user_profile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yahman_addons_social_user_profile'"
