<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ataa_version_key');
delete_site_option('ataa_version_key');
delete_option('ataa_options');
delete_site_option('ataa_options');

