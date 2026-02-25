-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cf7sr_notice_017', 'cf7sr_hc_key', 'cf7sr_hc_secret', 'cf7sr_hc_message', 'cf7sr_hc_language', 'cf7sr_key_v3', 'cf7sr_secret_v3', 'cf7sr_score_v3', 'cf7sr_message_v3', 'cf7sr_key', 'cf7sr_secret', 'cf7sr_message', 'cf7sr_language', 'cf7sr_ts_key', 'cf7sr_ts_secret', 'cf7sr_ts_message', 'cf7sr_ts_language', 'cf7sr_spam_stats');

