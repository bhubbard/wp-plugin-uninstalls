-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rntfw_settings', 'rntfw_site_registered', 'rntfw_site_secret', 'woocommerce_notify_low_stock_amount', 'rntfw_limit_reached_notice', 'rntfw_bot_info', 'rntfw_site_reg_status', 'rntfw_limit_upgrade_url');
DELETE FROM wp_options WHERE option_name LIKE 'rntfw_old_product_price_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rating');
DELETE FROM wp_usermeta WHERE meta_key IN ('rating');
DELETE FROM wp_termmeta WHERE meta_key IN ('rating');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rating');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'rntfw_dismissed_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'rntfw_dismissed_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'rntfw_dismissed_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'rntfw_dismissed_notice_%';

