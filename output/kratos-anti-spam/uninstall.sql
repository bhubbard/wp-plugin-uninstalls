-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sp_kas_protect', 'sp_kas_ajax_key', 'sp_kas_send_log', 'sp_kas_send_log_to', 'sp_kas_send_log_at', 'sp_kas_log_post', 'sp_kas_error_url', 'sp_kas_ajax_head', 'sp_kas_exclude', 'sp_kas_log_sent');

