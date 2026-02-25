-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mcwp-notice', 'mcwp-top-notice', 'mcwp-data-time', 'mcwp_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('crypto_speed', 'crypto_ticker', 'crypto_ticker_position');
DELETE FROM wp_usermeta WHERE meta_key IN ('crypto_speed', 'crypto_ticker', 'crypto_ticker_position');
DELETE FROM wp_termmeta WHERE meta_key IN ('crypto_speed', 'crypto_ticker', 'crypto_ticker_position');
DELETE FROM wp_commentmeta WHERE meta_key IN ('crypto_speed', 'crypto_ticker', 'crypto_ticker_position');

