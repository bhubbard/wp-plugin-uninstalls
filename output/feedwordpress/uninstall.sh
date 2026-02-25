#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'feedwordpress_do_not_match_author_by_email'
wp option delete 'feedwordpress_unfamiliar_author'
wp option delete 'feedwordpress_null_email_set'
wp option delete 'feedwordpress_syndicated_post_type'
wp option delete 'feedwordpress_match_cats'
wp option delete 'feedwordpress_match_tags'
wp option delete 'feedwordpress_match_filter'
wp option delete 'feedwordpress_syndication_terms'
wp option delete 'feedwordpress_version'
wp option delete 'feedwordpress_debug'
wp option delete 'feedwordpress_secret_key'
wp option delete 'feedwordpress_diagnostics_output'
wp option delete 'feedwordpress_diagnostics_show'
wp option delete 'feedwordpress_diagnostics_persistent_errors_hours'
wp option delete 'feedwordpress_diagnostics_email_destination'
wp option delete 'feedwordpress_update_time_limit'
wp option delete 'feedwordpress_hardcode_name'
wp option delete 'feedwordpress_hardcode_description'
wp option delete 'feedwordpress_hardcode_url'
wp option delete 'feedwordpress_cat_id'
wp option delete 'feedwordpress_automatic_updates'
wp option delete 'feedwordpress_update_window'
wp option delete 'feedwordpress_boilerplate_hook_order'
wp option delete 'feedwordpress_last_update_all'
wp option delete 'feedwordpress_freshness'
wp option delete 'feedwordpress_polls_per_update'
wp option delete 'feedwordpress_process_zaps'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'feedwordpress_unfamiliar_%'"
wp option delete 'feedwordpress_use_aggregator_source_data'
wp option delete 'feedwordpress_munge_permalink'
wp option delete 'feedwordpress_unfamiliar_category'
wp option delete 'feedwordpress_fetch_timeout'
wp option delete 'feedwordpress_diagnostics_log'
wp option delete 'feedwordpress_diagnostics_email_root_message_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'feedwordpress_%'"
wp option delete 'feedwordpress_boilerplate'
wp option delete 'feedwordpress_bleg_box_hidden'
wp option delete 'feedwordpress_syndicated_post_status'
wp option delete 'feedwordpress_custom_settings'
wp option delete 'feedwordpress_formatting_filters'
wp option delete 'feedwordpress_resolve_relative'
wp option delete 'feedwordpress_munge_comments_feed_links'
wp option delete 'feedwordpress_syndicated_comment_status'
wp option delete 'feedwordpress_syndicated_ping_status'
wp option delete 'feedwordpress_syndication_cats'
wp option delete 'feedwordpress_syndication_tags'
wp option delete 'feedwordpress_freeze_updates'

# Clear Cron Jobs
wp cron event delete 'fwp_scheduled_update_checkin'
wp cron event delete 'do_pings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_feedwordpress_zapped_blank_me'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_feedwordpress_zapped_blank_me'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_feedwordpress_zapped_blank_me'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_feedwordpress_zapped_blank_me'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_feedwordpress_zapped_blank_old_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_feedwordpress_zapped_blank_old_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_feedwordpress_zapped_blank_old_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_feedwordpress_zapped_blank_old_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_syndication_freeze_updates'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_syndication_freeze_updates'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_syndication_freeze_updates'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_syndication_freeze_updates'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_feedwordpress_formatting_filters'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_feedwordpress_formatting_filters'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_feedwordpress_formatting_filters'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_feedwordpress_formatting_filters'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_feedwordpress_retire_me_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_feedwordpress_retire_me_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_feedwordpress_retire_me_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_feedwordpress_retire_me_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'feedwordpress_generated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'feedwordpress_generated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'feedwordpress_generated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'feedwordpress_generated'"
