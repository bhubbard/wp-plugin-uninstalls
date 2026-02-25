-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rs_elew_wc_log_email_settings', 'rs_elew_wc_log_email');

