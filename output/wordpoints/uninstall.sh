#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wordpoints_recently_activated_modules'
wp option delete 'wordpoints_breaking_deactivated_modules'
wp option delete 'wordpoints_incompatible_modules'
wp option delete 'wordpoints_merged_extensions'
wp option delete 'wordpoints_module_check_nonce'
wp option delete 'wordpoints_module_check_rand_str'
wp option delete 'wordpoints_sitewide_active_modules'
wp option delete 'wordpoints_active_modules'
wp option delete 'wordpoints_legacy_extensions_dir'
wp option delete 'wordpoints_disabled_points_hooks_edit_points_types'
wp option delete 'wordpoints_points_types_hooks'
wp option delete 'wordpoints_comment_removed_hook_legacy'
wp option delete 'wordpoints_post_delete_hook_legacy'
wp option delete 'wordpoints_points_register_legacy_post_publish_event'
wp option delete 'wordpoints_comment_hook_legacy'
wp option delete 'wordpoints_post_hook_legacy'
wp option delete 'wordpoints_ranks_2_4_0_update_duplicates'
wp option delete 'wordpoints_filled_base_ranks'
wp option delete 'wordpoints_data'

# Delete Transients
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wordpoints_modules_delete_result_%' OR option_name LIKE '_site_transient_wordpoints_modules_delete_result_%'"
wp transient delete 'wordpoints_extension_updates'

# Clear Cron Jobs
wp cron event delete 'wordpoints_check_for_extension_updates'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'reverse_fired'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'reverse_fired'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'reverse_fired'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'reverse_fired'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hook_hit_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hook_hit_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hook_hit_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hook_hit_id'"
