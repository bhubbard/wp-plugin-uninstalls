<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mod_za_far_date');
delete_site_option('mod_za_far_date');
delete_option('mod_za_far_text');
delete_site_option('mod_za_far_text');

