<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tmwcg_digital_card_options');
delete_site_option('tmwcg_digital_card_options');
delete_option('tmwcg_wallet_account_data');
delete_site_option('tmwcg_wallet_account_data');

