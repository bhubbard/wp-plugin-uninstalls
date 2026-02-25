<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('protector-activated');
delete_site_option('protector-activated');
delete_option('protector-term');
delete_site_option('protector-term');
delete_option('protector-url');
delete_site_option('protector-url');

