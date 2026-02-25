<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pondol_widget_visitorstats');
delete_site_option('pondol_widget_visitorstats');

