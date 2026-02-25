<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('krakendownbutt');
delete_site_option('krakendownbutt');
delete_option('krakenauto');
delete_site_option('krakenauto');
delete_option('krakenwidth');
delete_site_option('krakenwidth');

