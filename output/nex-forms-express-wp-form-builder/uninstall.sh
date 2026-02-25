#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'nf_fs_activated'
wp option delete 'nf_activated'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'nex-forms-preferences'
wp option delete 'NFISENVA'
wp option delete 'nex-forms-other-config'
wp option delete '7103891'
wp option delete 'tmp_csv_export'
wp option delete 'nex-forms-email-config'
wp option delete 'nex_forms_mailchimp_api_key'
wp option delete 'nex_forms_get_response_api_key'
wp option delete 'nex-forms-script-config'
wp option delete 'nex-forms-style-config'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '1983017%'"
wp option delete 'dismiss_nf_notice_wf_02'
wp option delete 'nex-forms-version'
wp option delete 'nf-first-run'
wp option delete 'nf_set_attachments'
wp option delete 'convert_paypal'
wp option delete 'nf_interactions_converted'
wp option delete 'nf_views_converted'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

