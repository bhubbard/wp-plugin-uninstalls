<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('adactive');
delete_site_option('adactive');
delete_option('adaccountid');
delete_site_option('adaccountid');
delete_option('adsiteid');
delete_site_option('adsiteid');
delete_option('adtype');
delete_site_option('adtype');
delete_option('adfreq');
delete_site_option('adfreq');

