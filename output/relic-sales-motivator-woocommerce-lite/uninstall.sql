-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_free_shipping';
DELETE FROM wp_options WHERE option_name LIKE '%_recent_sales';
DELETE FROM wp_options WHERE option_name LIKE '%_bought_together';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_relic_sales_recently_bought', '_relic_sales_recently_bought_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('_relic_sales_recently_bought', '_relic_sales_recently_bought_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('_relic_sales_recently_bought', '_relic_sales_recently_bought_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_relic_sales_recently_bought', '_relic_sales_recently_bought_type');

