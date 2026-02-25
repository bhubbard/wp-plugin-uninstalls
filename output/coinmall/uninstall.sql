-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('CoinMall Currency', 'CoinMall Payment Status', 'CoinMall Address', 'CoinMall Amount', 'CoinMall Expires At', 'CoinMall QR Code', 'CoinMall LN Node', 'CoinMall LN Invoice', 'CoinMall LN Node QR Code', 'CoinMall LN Invoice QR Code', 'CoinMall Transaction ID', 'CoinMall Amount Paid');
DELETE FROM wp_usermeta WHERE meta_key IN ('CoinMall Currency', 'CoinMall Payment Status', 'CoinMall Address', 'CoinMall Amount', 'CoinMall Expires At', 'CoinMall QR Code', 'CoinMall LN Node', 'CoinMall LN Invoice', 'CoinMall LN Node QR Code', 'CoinMall LN Invoice QR Code', 'CoinMall Transaction ID', 'CoinMall Amount Paid');
DELETE FROM wp_termmeta WHERE meta_key IN ('CoinMall Currency', 'CoinMall Payment Status', 'CoinMall Address', 'CoinMall Amount', 'CoinMall Expires At', 'CoinMall QR Code', 'CoinMall LN Node', 'CoinMall LN Invoice', 'CoinMall LN Node QR Code', 'CoinMall LN Invoice QR Code', 'CoinMall Transaction ID', 'CoinMall Amount Paid');
DELETE FROM wp_commentmeta WHERE meta_key IN ('CoinMall Currency', 'CoinMall Payment Status', 'CoinMall Address', 'CoinMall Amount', 'CoinMall Expires At', 'CoinMall QR Code', 'CoinMall LN Node', 'CoinMall LN Invoice', 'CoinMall LN Node QR Code', 'CoinMall LN Invoice QR Code', 'CoinMall Transaction ID', 'CoinMall Amount Paid');

