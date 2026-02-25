#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qcf_legacy_free'
wp option delete 'quick-contact-form-settings-1'
wp option delete 'quick-contact-form-settings-2'
wp option delete 'post-smtp-recommendation-notice-hidden'
wp option delete 'post_smtp_global_recommendation_notice_hidden'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'qcf_messages%'"
wp option delete 'qcf_akismet'
wp option delete 'qcf_messageoptions'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'qcf_settings%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'qcf_attach%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'qcf_style%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'qcf_reply%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'qcf_error%'"
wp option delete 'qcf_setup'
wp option delete 'qcf_email'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'qcf_autoresponder%'"
wp option delete 'qcf_emailmessage'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'qcf_emails%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'qcf_redirect%'"
wp option delete 'qcf_message'
wp option delete 'qpp_key'
wp option delete 'qcf_smtp'
wp option delete 'qcf_mailinglist'
wp option delete 'qcf_activecampaign'
wp option delete 'qcf_newlist'
wp option delete 'qcf_collected'
wp option delete 'qcf_wallace'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'qcf-admin-notice'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

