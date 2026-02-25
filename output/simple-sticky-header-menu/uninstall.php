<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('topspace');
delete_site_option('topspace');
delete_option('header_selected_idcls');
delete_site_option('header_selected_idcls');
delete_option('sticky_hdrheight');
delete_site_option('sticky_hdrheight');

