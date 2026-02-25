-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gns_name', 'gns_genre', 'gns_keyword', 'gns_posts', 'gns_lang', 'gns_access', 'gns_stock_tickers');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gns_exclude', 'gns_keyword', 'gns_genre', 'gns_stock_tickers');
DELETE FROM wp_usermeta WHERE meta_key IN ('gns_exclude', 'gns_keyword', 'gns_genre', 'gns_stock_tickers');
DELETE FROM wp_termmeta WHERE meta_key IN ('gns_exclude', 'gns_keyword', 'gns_genre', 'gns_stock_tickers');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gns_exclude', 'gns_keyword', 'gns_genre', 'gns_stock_tickers');

