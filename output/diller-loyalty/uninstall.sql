-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_myaccount_page_id', '_diller_settings', '_diller_store_configs', 'woocommerce_default_country', 'diller_flush_rewrite_rules');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('nickname', 'first_name', 'last_name', 'lang');
DELETE FROM wp_usermeta WHERE meta_key IN ('nickname', 'first_name', 'last_name', 'lang');
DELETE FROM wp_termmeta WHERE meta_key IN ('nickname', 'first_name', 'last_name', 'lang');
DELETE FROM wp_commentmeta WHERE meta_key IN ('nickname', 'first_name', 'last_name', 'lang');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%unsubscribed_datetime';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%unsubscribed_datetime';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%unsubscribed_datetime';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%unsubscribed_datetime';

