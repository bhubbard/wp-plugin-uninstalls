<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('logo-url1');
delete_site_option('logo-url1');
delete_option('logo-img1');
delete_site_option('logo-img1');
delete_option('logo-url2');
delete_site_option('logo-url2');
delete_option('logo-img2');
delete_site_option('logo-img2');
delete_option('logo-url3');
delete_site_option('logo-url3');
delete_option('logo-img3');
delete_site_option('logo-img3');
delete_option('logo-url4');
delete_site_option('logo-url4');
delete_option('logo-img4');
delete_site_option('logo-img4');
delete_option('logo-url5');
delete_site_option('logo-url5');
delete_option('logo-img5');
delete_site_option('logo-img5');
delete_option('logo-url6');
delete_site_option('logo-url6');
delete_option('logo-img6');
delete_site_option('logo-img6');

