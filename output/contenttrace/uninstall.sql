-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('contenttrace_archive_auto', 'contenttrace_token_visibility', 'contenttrace_token_style', 'contenttrace_enabled', 'contenttrace_last_log_cleanup', 'contenttrace_scan_log', 'contenttrace_job_logs', 'contenttrace_last_nightly_scan', 'contenttrace_scan_position', 'contenttrace_exclude_categories', 'contenttrace_last_full_scan', 'contenttrace_email_alerts', 'contenttrace_current_job', 'contenttrace_alert_email', 'contenttrace_owner_name', 'contenttrace_owner_email', 'contenttrace_owner_address', 'contenttrace_owner_country', 'contenttrace_add_to_excerpts', 'contenttrace_rss_tokens');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_contenttrace_archive_url', '_contenttrace_archive_date', '_contenttrace_archive_pending', '_contenttrace_fingerprint', '_contenttrace_last_scan', '_contenttrace_takedown_log');
DELETE FROM wp_usermeta WHERE meta_key IN ('_contenttrace_archive_url', '_contenttrace_archive_date', '_contenttrace_archive_pending', '_contenttrace_fingerprint', '_contenttrace_last_scan', '_contenttrace_takedown_log');
DELETE FROM wp_termmeta WHERE meta_key IN ('_contenttrace_archive_url', '_contenttrace_archive_date', '_contenttrace_archive_pending', '_contenttrace_fingerprint', '_contenttrace_last_scan', '_contenttrace_takedown_log');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_contenttrace_archive_url', '_contenttrace_archive_date', '_contenttrace_archive_pending', '_contenttrace_fingerprint', '_contenttrace_last_scan', '_contenttrace_takedown_log');

