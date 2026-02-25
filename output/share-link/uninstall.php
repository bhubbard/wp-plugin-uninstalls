<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sharelink-license');
delete_site_option('sharelink-license');
delete_option('sharelink-license-activated');
delete_site_option('sharelink-license-activated');

