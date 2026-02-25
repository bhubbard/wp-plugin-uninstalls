<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fm_covid_bg_colour');
delete_site_option('fm_covid_bg_colour');
delete_option('fm_covid_text_colour');
delete_site_option('fm_covid_text_colour');

