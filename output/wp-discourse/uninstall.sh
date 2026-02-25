#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'discourse_publish'
wp option delete 'discourse_comment'
wp option delete 'discourse_configurable_text'
wp option delete 'discourse_configurable_text_backup'
wp option delete 'discourse_connect'
wp option delete 'wpdc_discourse_domain'
wp option delete 'discourse_logs'
wp option delete 'wpdc_multisite_configuration'
wp option delete 'wpdc_site_options'
wp option delete 'wpdc_cached_html_keys'
wp option delete 'discourse_sso_common'
wp option delete 'discourse_sso_provider'
wp option delete 'discourse_sso_client'
wp option delete 'discourse_webhook'
wp option delete 'discourse_option_groups'
wp option delete 'discourse_version'
wp option delete 'wpdiscourse_nonce_db_version'
wp option delete 'wpdc_topic_blog_db_version'
wp option delete 'wpdc_discourse_categories'
wp option delete 'wpdc_141_update_notice'

# Delete Transients
wp transient delete 'wpdc_discourse_categories'
wp transient delete 'wpdc_non_automatic_groups'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpdc_publishing_response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpdc_publishing_response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpdc_publishing_response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpdc_publishing_response'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discourse_permalink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discourse_permalink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discourse_permalink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discourse_permalink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpdc_linking_response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpdc_linking_response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpdc_linking_response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpdc_linking_response'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discourse_username'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discourse_username'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discourse_username'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discourse_username'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'publish_to_discourse'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'publish_to_discourse'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'publish_to_discourse'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'publish_to_discourse'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpdc_auto_publish_overridden'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpdc_auto_publish_overridden'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpdc_auto_publish_overridden'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpdc_auto_publish_overridden'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'publish_post_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'publish_post_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'publish_post_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'publish_post_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpdc_topic_tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpdc_topic_tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpdc_topic_tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpdc_topic_tags'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpdc_pin_topic'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpdc_pin_topic'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpdc_pin_topic'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpdc_pin_topic'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpdc_pin_until'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpdc_pin_until'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpdc_pin_until'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpdc_pin_until'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discourse_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discourse_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discourse_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discourse_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discourse_topic_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discourse_topic_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discourse_topic_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discourse_topic_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discourse_comments_raw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discourse_comments_raw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discourse_comments_raw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discourse_comments_raw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discourse_comments_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discourse_comments_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discourse_comments_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discourse_comments_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discourse_last_sync'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discourse_last_sync'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discourse_last_sync'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discourse_last_sync'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'update_discourse_topic'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'update_discourse_topic'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'update_discourse_topic'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'update_discourse_topic'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpdc_sync_post_comments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpdc_sync_post_comments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpdc_sync_post_comments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpdc_sync_post_comments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpdc_publishing_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpdc_publishing_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpdc_publishing_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpdc_publishing_error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpdc_deleted_topic'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpdc_deleted_topic'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpdc_deleted_topic'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpdc_deleted_topic'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpdc_unlisted_topic'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpdc_unlisted_topic'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpdc_unlisted_topic'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpdc_unlisted_topic'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discourse_email_not_verified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discourse_email_not_verified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discourse_email_not_verified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discourse_email_not_verified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpdc_xmlrpc_failure_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpdc_xmlrpc_failure_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpdc_xmlrpc_failure_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpdc_xmlrpc_failure_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discourse_sso_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discourse_sso_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discourse_sso_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discourse_sso_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discourse_mismatched_emails'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discourse_mismatched_emails'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discourse_mismatched_emails'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discourse_mismatched_emails'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discourse_sso_client_synced'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discourse_sso_client_synced'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discourse_sso_client_synced'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discourse_sso_client_synced'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discourse_email_verification_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discourse_email_verification_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discourse_email_verification_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discourse_email_verification_key'"
