<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('acurax_popunder_installed_date');
delete_site_option('acurax_popunder_installed_date');
delete_option('acurax_popunder_array');
delete_site_option('acurax_popunder_array');
delete_option('acurax_popunder_timeout');
delete_site_option('acurax_popunder_timeout');
delete_option('acurax_popunder_service_banners');
delete_site_option('acurax_popunder_service_banners');
delete_option('acurax_popunder_premium_ad');
delete_site_option('acurax_popunder_premium_ad');
delete_option('acurax_popunder_version_p');
delete_site_option('acurax_popunder_version_p');
delete_option('acurax_popunder_td');
delete_site_option('acurax_popunder_td');

