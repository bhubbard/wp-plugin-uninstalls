<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('eisallowhtml');
delete_site_option('eisallowhtml');
delete_option('eisallowbb');
delete_site_option('eisallowbb');

