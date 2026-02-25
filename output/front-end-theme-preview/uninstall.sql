-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fetp_options', 'fetp_themes', 'fetp_cookie', 'fetp_select', 'fetp_last_cron', 'fetp_clean_up_frequency', 'fetp_enable_download', 'fetp_paypal_settings', 'fetp_delete_data', 'fetp_enable_default_theme_download', 'fetp_premium', 'current_theme');
DELETE FROM wp_options WHERE option_name LIKE '%_price';

