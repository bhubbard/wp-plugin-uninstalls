<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nextcart_token');
delete_site_option('nextcart_token');
delete_option('nextcart_url_redirect');
delete_site_option('nextcart_url_redirect');

