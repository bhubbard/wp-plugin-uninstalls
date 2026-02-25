<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tgqb_settings');
delete_site_option('tgqb_settings');
delete_option('tgqb_styling');
delete_site_option('tgqb_styling');

