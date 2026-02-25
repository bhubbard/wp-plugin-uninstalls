<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ei_pop_on');
delete_site_option('ei_pop_on');
delete_option('ei_form_id');
delete_site_option('ei_form_id');
delete_option('ei_pop_time');
delete_site_option('ei_pop_time');

