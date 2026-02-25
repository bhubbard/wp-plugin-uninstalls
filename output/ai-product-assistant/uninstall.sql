-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'aipa_install_time', 'aipa_settings', 'aipa_debug_settings', 'aipa_usage_stats', 'woocommerce_hide_out_of_stock_items', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'aipa_search_count', 'aipa_analysis_count');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('aipa_upgrade_notice_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('aipa_upgrade_notice_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('aipa_upgrade_notice_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('aipa_upgrade_notice_dismissed');

