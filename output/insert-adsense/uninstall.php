<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('adsensecode1');
delete_site_option('adsensecode1');
delete_option('adsensecode2');
delete_site_option('adsensecode2');
delete_option('adsensecode3');
delete_site_option('adsensecode3');
delete_option('adsensecode4');
delete_site_option('adsensecode4');
delete_option('adsensecode5');
delete_site_option('adsensecode5');
delete_option('adsensecode6');
delete_site_option('adsensecode6');
delete_option('adsensecode7');
delete_site_option('adsensecode7');

