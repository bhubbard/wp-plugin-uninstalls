<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wapp_portfolio_options');
delete_site_option('wapp_portfolio_options');
delete_option('wapp_portfolio_content_options_group');
delete_site_option('wapp_portfolio_content_options_group');

