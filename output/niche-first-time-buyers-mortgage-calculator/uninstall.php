<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ftbmc_colour_1');
delete_site_option('ftbmc_colour_1');
delete_option('ftbmc_colour_2');
delete_site_option('ftbmc_colour_2');
delete_option('ftbmc_colour_3');
delete_site_option('ftbmc_colour_3');
delete_option('ftbmc_colour_4');
delete_site_option('ftbmc_colour_4');
delete_option('ftbmc_colour_5');
delete_site_option('ftbmc_colour_5');
delete_option('rmc_colour_1');
delete_site_option('rmc_colour_1');
delete_option('rmc_colour_2');
delete_site_option('rmc_colour_2');
delete_option('rmc_colour_3');
delete_site_option('rmc_colour_3');
delete_option('rmc_colour_4');
delete_site_option('rmc_colour_4');
delete_option('rmc_colour_5');
delete_site_option('rmc_colour_5');
delete_option('ssmc_colour_1');
delete_site_option('ssmc_colour_1');
delete_option('ssmc_colour_2');
delete_site_option('ssmc_colour_2');
delete_option('ssmc_colour_3');
delete_site_option('ssmc_colour_3');

