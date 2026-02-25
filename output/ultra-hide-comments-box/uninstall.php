<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ultra_hidey_catlist');
delete_site_option('ultra_hidey_catlist');
delete_option('ultra_hidey_version');
delete_site_option('ultra_hidey_version');

