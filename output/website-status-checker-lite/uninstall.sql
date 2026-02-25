-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('servercheckpro_pro_purchase_date', 'servercheckpro_urls', 'servercheckpro_check_interval', 'servercheckpro_auto_check_enabled', 'servercheckpro_alert_on_slow', 'servercheckpro_last_checked_time', 'servercheckpro_results', 'servercheckpro_last_manual_check', 'servercheckpro_admin_notice_dismissed');

