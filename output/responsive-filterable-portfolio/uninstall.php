<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('best_portfolio_grid_settings');
delete_site_option('best_portfolio_grid_settings');
delete_option('wp_best_portfolio_msg');
delete_site_option('wp_best_portfolio_msg');

