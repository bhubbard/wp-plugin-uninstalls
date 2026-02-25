<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mcsw_ajax');
delete_site_option('mcsw_ajax');
delete_option('mcsw_form');
delete_site_option('mcsw_form');
delete_option('mcsw_form_display');
delete_site_option('mcsw_form_display');

