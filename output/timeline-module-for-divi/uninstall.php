<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tmdivi_initial_version');
delete_site_option('tmdivi_initial_version');
delete_option('tmdivi-installDate');
delete_site_option('tmdivi-installDate');
delete_option('tmdivi-v');
delete_site_option('tmdivi-v');
delete_option('tmdivi-type');
delete_site_option('tmdivi-type');
delete_option('tmdivi-defaultPlugin');
delete_site_option('tmdivi-defaultPlugin');
delete_option('tmdivi-Boxes-ratingDiv');
delete_site_option('tmdivi-Boxes-ratingDiv');

