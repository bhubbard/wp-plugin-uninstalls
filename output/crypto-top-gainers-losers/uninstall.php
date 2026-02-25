<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cpcpref_crypto_gainer_gainers');
delete_site_option('cpcpref_crypto_gainer_gainers');
delete_option('cpcpref_crypto_gainer_losers');
delete_site_option('cpcpref_crypto_gainer_losers');
delete_option('cpcpref_crypto_gainer_credits');
delete_site_option('cpcpref_crypto_gainer_credits');
delete_option('cpcpref_crypto_gainer_text_color');
delete_site_option('cpcpref_crypto_gainer_text_color');
delete_option('cpcpref_crypto_gainer_box_color');
delete_site_option('cpcpref_crypto_gainer_box_color');
delete_option('cpcpref_crypto_gainer_box_width');
delete_site_option('cpcpref_crypto_gainer_box_width');
delete_option('cpcpref_crypto_gainer_item_padding');
delete_site_option('cpcpref_crypto_gainer_item_padding');
delete_option('cpcpref_crypto_gainer_max_items');
delete_site_option('cpcpref_crypto_gainer_max_items');

