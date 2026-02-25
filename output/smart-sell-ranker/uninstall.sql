-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'SmartSellRanker_cron_start', 'SmartSellRanker_setting_saved', 'ss_ranker_general_tab_settings', 'SmartSellRanker_installed', 'woocommerce_email_footer_text');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ss_ranker_sales_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('ss_ranker_sales_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('ss_ranker_sales_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ss_ranker_sales_count');

