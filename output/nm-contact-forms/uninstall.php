<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nm_f');
delete_site_option('nm_f');
delete_option('nm_f_s');
delete_site_option('nm_f_s');

