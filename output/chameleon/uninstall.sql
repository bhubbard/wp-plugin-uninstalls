-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpch_news_ticker', 'wp_chameleon', 'wp_chameleon_background');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bpc_theme');
DELETE FROM wp_usermeta WHERE meta_key IN ('bpc_theme');
DELETE FROM wp_termmeta WHERE meta_key IN ('bpc_theme');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bpc_theme');

