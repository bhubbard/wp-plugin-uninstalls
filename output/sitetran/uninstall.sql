-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sitetran_authentication_key', 'sitetran_site_id', 'sitetran_connect_google_analytics', 'sitetran_auto_detect_language', 'sitetran_original_language_code', 'sitetran_target_languages', 'sitetran_had_conflict', 'sitetran_plugin_conflict_message', 'sitetran_pages_sent', 'sitetran_intialize_success_message_seen', 'sitetran_flush_rewrite_rules', 'sitetran_db_version');

