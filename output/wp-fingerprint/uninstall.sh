#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpfingerprint_checkstamp'
wp option delete 'wpfingerprint_invalid'
wp option delete 'wpfingerprint_db_version'
wp option delete 'wpfingerprint_checksum'
wp option delete 'wpfingerprint_last_run'
wp option delete 'wp_fingerprint_option'
wp option delete 'wpfingerprint_fails'
wp option delete 'wpfingerprint_mode'

# Delete Transients
wp transient delete 'wpfingerprint-first-run'

# Clear Cron Jobs
wp cron event delete 'wpfingerprint_run_now'
wp cron event delete 'wpfingerprint_cron'

