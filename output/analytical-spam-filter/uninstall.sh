#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'analytical_spam_filter_settings_db'
wp option delete 'analytical_spam_filter_salt'
wp option delete 'analytical_spam_filter_hash_field_id'
wp option delete 'analytical_spam_filter_honeypot_field_id'
wp option delete 'analytical_spam_filter_duration_field_id'
wp option delete 'analytical_spam_filter_database_version'

# Clear Cron Jobs
wp cron event delete 'analytical_spam_filter_cron_hook'

