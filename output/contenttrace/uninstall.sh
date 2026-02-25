#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'contenttrace_archive_auto'
wp option delete 'contenttrace_token_visibility'
wp option delete 'contenttrace_token_style'
wp option delete 'contenttrace_enabled'
wp option delete 'contenttrace_last_log_cleanup'
wp option delete 'contenttrace_scan_log'
wp option delete 'contenttrace_job_logs'
wp option delete 'contenttrace_last_nightly_scan'
wp option delete 'contenttrace_scan_position'
wp option delete 'contenttrace_exclude_categories'
wp option delete 'contenttrace_last_full_scan'
wp option delete 'contenttrace_email_alerts'
wp option delete 'contenttrace_current_job'
wp option delete 'contenttrace_alert_email'
wp option delete 'contenttrace_owner_name'
wp option delete 'contenttrace_owner_email'
wp option delete 'contenttrace_owner_address'
wp option delete 'contenttrace_owner_country'
wp option delete 'contenttrace_add_to_excerpts'
wp option delete 'contenttrace_rss_tokens'

# Clear Cron Jobs
wp cron event delete 'contenttrace_archive_submit'
wp cron event delete 'contenttrace_daily_scan'
wp cron event delete 'contenttrace_process_scan_batch'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_contenttrace_archive_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_contenttrace_archive_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_contenttrace_archive_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_contenttrace_archive_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_contenttrace_archive_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_contenttrace_archive_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_contenttrace_archive_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_contenttrace_archive_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_contenttrace_archive_pending'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_contenttrace_archive_pending'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_contenttrace_archive_pending'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_contenttrace_archive_pending'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_contenttrace_fingerprint'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_contenttrace_fingerprint'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_contenttrace_fingerprint'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_contenttrace_fingerprint'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_contenttrace_last_scan'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_contenttrace_last_scan'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_contenttrace_last_scan'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_contenttrace_last_scan'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_contenttrace_takedown_log'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_contenttrace_takedown_log'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_contenttrace_takedown_log'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_contenttrace_takedown_log'"
