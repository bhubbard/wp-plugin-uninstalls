<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ss_podcasting_payment_url');
delete_site_option('ss_podcasting_payment_url');

