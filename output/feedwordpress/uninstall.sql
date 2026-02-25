-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('feedwordpress_do_not_match_author_by_email', 'feedwordpress_unfamiliar_author', 'feedwordpress_null_email_set', 'feedwordpress_syndicated_post_type', 'feedwordpress_match_cats', 'feedwordpress_match_tags', 'feedwordpress_match_filter', 'feedwordpress_syndication_terms', 'feedwordpress_version', 'feedwordpress_debug', 'feedwordpress_secret_key', 'feedwordpress_diagnostics_output', 'feedwordpress_diagnostics_show', 'feedwordpress_diagnostics_persistent_errors_hours', 'feedwordpress_diagnostics_email_destination', 'feedwordpress_update_time_limit', 'feedwordpress_hardcode_name', 'feedwordpress_hardcode_description', 'feedwordpress_hardcode_url', 'feedwordpress_cat_id', 'feedwordpress_automatic_updates', 'feedwordpress_update_window', 'feedwordpress_boilerplate_hook_order', 'feedwordpress_last_update_all', 'feedwordpress_freshness', 'feedwordpress_polls_per_update', 'feedwordpress_process_zaps', 'feedwordpress_use_aggregator_source_data', 'feedwordpress_munge_permalink', 'feedwordpress_unfamiliar_category', 'feedwordpress_fetch_timeout', 'feedwordpress_diagnostics_log', 'feedwordpress_diagnostics_email_root_message_id', 'feedwordpress_boilerplate', 'feedwordpress_bleg_box_hidden', 'feedwordpress_syndicated_post_status', 'feedwordpress_custom_settings', 'feedwordpress_formatting_filters', 'feedwordpress_resolve_relative', 'feedwordpress_munge_comments_feed_links', 'feedwordpress_syndicated_comment_status', 'feedwordpress_syndicated_ping_status', 'feedwordpress_syndication_cats', 'feedwordpress_syndication_tags', 'feedwordpress_freeze_updates');
DELETE FROM wp_options WHERE option_name LIKE 'feedwordpress_unfamiliar_%';
DELETE FROM wp_options WHERE option_name LIKE 'feedwordpress_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_feedwordpress_zapped_blank_me', '_feedwordpress_zapped_blank_old_status', '_syndication_freeze_updates', '_feedwordpress_formatting_filters', 'feedwordpress_generated');
DELETE FROM wp_usermeta WHERE meta_key IN ('_feedwordpress_zapped_blank_me', '_feedwordpress_zapped_blank_old_status', '_syndication_freeze_updates', '_feedwordpress_formatting_filters', 'feedwordpress_generated');
DELETE FROM wp_termmeta WHERE meta_key IN ('_feedwordpress_zapped_blank_me', '_feedwordpress_zapped_blank_old_status', '_syndication_freeze_updates', '_feedwordpress_formatting_filters', 'feedwordpress_generated');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_feedwordpress_zapped_blank_me', '_feedwordpress_zapped_blank_old_status', '_syndication_freeze_updates', '_feedwordpress_formatting_filters', 'feedwordpress_generated');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_feedwordpress_retire_me_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_feedwordpress_retire_me_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_feedwordpress_retire_me_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_feedwordpress_retire_me_%';

