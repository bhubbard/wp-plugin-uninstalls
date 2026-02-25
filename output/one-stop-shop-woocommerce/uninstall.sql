-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_eu_tax_helper_last_rate_changeset', 'woocommerce_tax_based_on', 'oss_use_oss_procedure', 'oss_fixed_gross_prices', 'one_stop_shop_woocommerce', 'oss_woocommerce_reports_running', 'oss_enable_auto_observation', 'oss_woocommerce_reports', 'woocommerce_gzd_version', 'oss_report_date_type', 'oss_fixed_gross_prices_for_third_countries', 'woocommerce_email_footer_text', 'oss_reports_counts');
DELETE FROM wp_options WHERE option_name LIKE 'oss_hide_notice_%';
DELETE FROM wp_options WHERE option_name LIKE '%_tmp_result';
DELETE FROM wp_options WHERE option_name LIKE 'oss_woocommerce_notification_sent_%';
DELETE FROM wp_options WHERE option_name LIKE 'oss_woocommerce_observer_report_%';
DELETE FROM wp_options WHERE option_name LIKE '%_result';

