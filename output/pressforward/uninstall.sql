-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pf_version', 'pf_delete_queue_nonce', 'pf_link_to_source', 'pf_nomination_send_email', 'pf_use_advanced_user_roles', 'pf_user_nomination_success_email_default', 'pf_user_nomination_promoted_email_default', 'pf_user_item_comment_email_default', 'pf_menu_nominate_this_access', 'pf_menu_feeder_access', 'pf_menu_preferences_access', 'pf_metrics_config', 'pf_menu_all_content_access', 'pf_menu_group_access', 'pf_retain_time', 'pf_errors_until_alert', 'pf_present_author_as_primary', 'pf_source_statement_position', 'pf_source_statement_formats', 'pressforward_archive_org_enabled', 'pf_force_classic_nominate_this', 'pf_menu_under_review_access', 'pf_menu_stats_access', 'pf_last_nominated_feed', 'pf_feed_cron_check_timestamp', 'pf_feed_cron_check_offset', 'pf_relationships_db_version', 'pf_retrieval_migration_5_6_0', 'pf_delete_queue', 'pressforward_migrated_530_source_statements', 'pf_feature_comments_access', 'pf_menu_log_access', 'pf_debugger_enable', 'pf_feedlist');
DELETE FROM wp_options WHERE option_name LIKE '%_draft_post_status';
DELETE FROM wp_options WHERE option_name LIKE '%_enable';
DELETE FROM wp_options WHERE option_name LIKE '%_retrieval_frequency';
DELETE FROM wp_options WHERE option_name LIKE '%_draft_post_type';
DELETE FROM wp_options WHERE option_name LIKE '%_advanced_meta_handling';
DELETE FROM wp_options WHERE option_name LIKE '%_rss-out_enable';
DELETE FROM wp_options WHERE option_name LIKE '%_feedlist';
DELETE FROM wp_options WHERE option_name LIKE '%_feedlist_backup';
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_errors_until_alert';
DELETE FROM wp_options WHERE option_name LIKE '%_retain_time';
DELETE FROM wp_options WHERE option_name LIKE 'item_readable_content_%';
DELETE FROM wp_options WHERE option_name LIKE 'pf_stats_%';
DELETE FROM wp_options WHERE option_name LIKE 'feed_img_%';
DELETE FROM wp_options WHERE option_name LIKE 'pf_opml_%';
DELETE FROM wp_options WHERE option_name LIKE 'pf_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pf_user_read_state', 'nom_id', 'item_link', 'subscribe_to_feed', 'send_to_draft', 'pf_nomthis_comment', 'htmlUrl', 'feedUrl', 'feed_url', 'feed_author', 'item_id', 'pf_nominations_in_feed', 'do_import_tags', 'archive_org_status', 'nom_stats', 'nom_count', 'pre_alert_status', 'pf_source_statement');
DELETE FROM wp_usermeta WHERE meta_key IN ('pf_user_read_state', 'nom_id', 'item_link', 'subscribe_to_feed', 'send_to_draft', 'pf_nomthis_comment', 'htmlUrl', 'feedUrl', 'feed_url', 'feed_author', 'item_id', 'pf_nominations_in_feed', 'do_import_tags', 'archive_org_status', 'nom_stats', 'nom_count', 'pre_alert_status', 'pf_source_statement');
DELETE FROM wp_termmeta WHERE meta_key IN ('pf_user_read_state', 'nom_id', 'item_link', 'subscribe_to_feed', 'send_to_draft', 'pf_nomthis_comment', 'htmlUrl', 'feedUrl', 'feed_url', 'feed_author', 'item_id', 'pf_nominations_in_feed', 'do_import_tags', 'archive_org_status', 'nom_stats', 'nom_count', 'pre_alert_status', 'pf_source_statement');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pf_user_read_state', 'nom_id', 'item_link', 'subscribe_to_feed', 'send_to_draft', 'pf_nomthis_comment', 'htmlUrl', 'feedUrl', 'feed_url', 'feed_author', 'item_id', 'pf_nominations_in_feed', 'do_import_tags', 'archive_org_status', 'nom_stats', 'nom_count', 'pre_alert_status', 'pf_source_statement');

