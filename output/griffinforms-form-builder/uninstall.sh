#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'griffinforms_db_migrations_version'
wp option delete 'griffinforms_lifetime_submission_count_backfilled'
wp option delete 'griffinforms_form_element_form_id_backfilled'
wp option delete 'griffinforms_form_element_form_id_backfill_last_id'
wp option delete 'griffinforms_activation_redirect'

# Clear Cron Jobs
wp cron event delete 'griffinforms_process_jobs'
wp cron event delete 'griffinforms_log_cleanup'

