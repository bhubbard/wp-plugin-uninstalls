#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pf_version'
wp option delete 'pf_delete_queue_nonce'
wp option delete 'pf_link_to_source'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_draft_post_status'"
wp option delete 'pf_nomination_send_email'
wp option delete 'pf_use_advanced_user_roles'
wp option delete 'pf_user_nomination_success_email_default'
wp option delete 'pf_user_nomination_promoted_email_default'
wp option delete 'pf_user_item_comment_email_default'
wp option delete 'pf_menu_nominate_this_access'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enable'"
wp option delete 'pf_menu_feeder_access'
wp option delete 'pf_menu_preferences_access'
wp option delete 'pf_metrics_config'
wp option delete 'pf_menu_all_content_access'
wp option delete 'pf_menu_group_access'
wp option delete 'pf_retain_time'
wp option delete 'pf_errors_until_alert'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_retrieval_frequency'"
wp option delete 'pf_present_author_as_primary'
wp option delete 'pf_source_statement_position'
wp option delete 'pf_source_statement_formats'
wp option delete 'pressforward_archive_org_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_draft_post_type'"
wp option delete 'pf_force_classic_nominate_this'
wp option delete 'pf_menu_under_review_access'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_advanced_meta_handling'"
wp option delete 'pf_menu_stats_access'
wp option delete 'pf_last_nominated_feed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_rss-out_enable'"
wp option delete 'pf_feed_cron_check_timestamp'
wp option delete 'pf_feed_cron_check_offset'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_feedlist'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_feedlist_backup'"
wp option delete 'pf_relationships_db_version'
wp option delete 'pf_retrieval_migration_5_6_0'
wp option delete 'pf_delete_queue'
wp option delete 'pressforward_migrated_530_source_statements'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'pf_feature_comments_access'
wp option delete 'pf_menu_log_access'
wp option delete 'pf_debugger_enable'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_errors_until_alert'"
wp option delete 'pf_feedlist'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_retain_time'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_item_readable_content_%' OR option_name LIKE '_site_transient_item_readable_content_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pf_stats_%' OR option_name LIKE '_site_transient_pf_stats_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_feed_img_%' OR option_name LIKE '_site_transient_feed_img_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pf_opml_%' OR option_name LIKE '_site_transient_pf_opml_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pf_%' OR option_name LIKE '_site_transient_pf_%'"

# Clear Cron Jobs
wp cron event delete 'pf_retrieve_feed'
wp cron event delete 'pf_feed_health_check'
wp cron event delete 'pressforward_submit_to_archive_org'
wp cron event delete 'take_feed_out'
wp cron event delete 'pull_feed_in'
wp cron event delete 'pf_process_delete_queue'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pf_user_read_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pf_user_read_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pf_user_read_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pf_user_read_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nom_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nom_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nom_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nom_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'item_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'item_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'item_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'item_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'subscribe_to_feed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'subscribe_to_feed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'subscribe_to_feed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'subscribe_to_feed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'send_to_draft'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'send_to_draft'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'send_to_draft'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'send_to_draft'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pf_nomthis_comment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pf_nomthis_comment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pf_nomthis_comment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pf_nomthis_comment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'htmlUrl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'htmlUrl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'htmlUrl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'htmlUrl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'feedUrl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'feedUrl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'feedUrl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'feedUrl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'feed_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'feed_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'feed_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'feed_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'feed_author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'feed_author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'feed_author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'feed_author'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'item_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'item_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'item_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'item_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pf_nominations_in_feed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pf_nominations_in_feed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pf_nominations_in_feed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pf_nominations_in_feed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'do_import_tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'do_import_tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'do_import_tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'do_import_tags'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'archive_org_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'archive_org_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'archive_org_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'archive_org_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nom_stats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nom_stats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nom_stats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nom_stats'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nom_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nom_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nom_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nom_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pre_alert_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pre_alert_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pre_alert_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pre_alert_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pf_source_statement'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pf_source_statement'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pf_source_statement'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pf_source_statement'"
