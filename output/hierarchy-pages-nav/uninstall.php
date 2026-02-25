<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hpgnav_mng');
delete_site_option('hpgnav_mng');
delete_option('hpgnav_view');
delete_site_option('hpgnav_view');

