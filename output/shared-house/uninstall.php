<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('shared_house_data');
delete_site_option('shared_house_data');
delete_option('shared_house_saison');
delete_site_option('shared_house_saison');
delete_option('shared_house_langue');
delete_site_option('shared_house_langue');

