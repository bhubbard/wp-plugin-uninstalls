<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('crypto_bitcoin_address');
delete_site_option('crypto_bitcoin_address');
delete_option('crypto_ethereum_address');
delete_site_option('crypto_ethereum_address');
delete_option('crypto_solana_address');
delete_site_option('crypto_solana_address');
delete_option('crypto_bitcoin_qr_url');
delete_site_option('crypto_bitcoin_qr_url');
delete_option('crypto_ethereum_qr_url');
delete_site_option('crypto_ethereum_qr_url');
delete_option('crypto_solana_qr_url');
delete_site_option('crypto_solana_qr_url');
delete_option('default_crypto');
delete_site_option('default_crypto');
delete_option('default_theme');
delete_site_option('default_theme');
delete_option('crypto_title');
delete_site_option('crypto_title');

