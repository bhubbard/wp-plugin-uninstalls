<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('axp-cyrtolat-fields');
delete_site_option('axp-cyrtolat-fields');

