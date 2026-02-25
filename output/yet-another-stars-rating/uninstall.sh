#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yasr_general_options'
wp option delete 'yasr-version'
wp option delete 'yasr_plugin_imported'
wp option delete 'postratings_max'
wp option delete 'yasr_multiset_options'
wp option delete 'yasr_style_options'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'yasr_wppr_import_query_number'
wp transient delete 'yasr_kksr_import_query_number'
wp transient delete 'yasr_rmp_import_query_number'
wp transient delete 'yasr_mr_import_query_number'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yasr_overall_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yasr_overall_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yasr_overall_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yasr_overall_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yasr_review_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yasr_review_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yasr_review_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yasr_review_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yasr_multiset_author_votes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yasr_multiset_author_votes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yasr_multiset_author_votes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yasr_multiset_author_votes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yasr_post_is_review'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yasr_post_is_review'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yasr_post_is_review'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yasr_post_is_review'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yasr_schema_additional_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yasr_schema_additional_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yasr_schema_additional_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yasr_schema_additional_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yasr_auto_insert_disabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yasr_auto_insert_disabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yasr_auto_insert_disabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yasr_auto_insert_disabled'"
