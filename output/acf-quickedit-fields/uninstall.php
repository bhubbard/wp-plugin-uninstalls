<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('acf_duplicate_repeater_version');
delete_site_option('acf_duplicate_repeater_version');

