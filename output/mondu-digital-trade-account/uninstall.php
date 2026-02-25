<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mondu_trade_account_options');
delete_site_option('mondu_trade_account_options');
delete_option('_mondu_trade_webhooks_registered');
delete_site_option('_mondu_trade_webhooks_registered');
delete_option('_mondu_trade_webhooks_secret');
delete_site_option('_mondu_trade_webhooks_secret');

