<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('scfwc_time');
delete_site_option('scfwc_time');
delete_option('scfwc_title');
delete_site_option('scfwc_title');
delete_option('scfwc_select_days');
delete_site_option('scfwc_select_days');
delete_option('scfwc_render_location');
delete_site_option('scfwc_render_location');

