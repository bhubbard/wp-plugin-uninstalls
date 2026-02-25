<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('canaia_assist_show_modal');
delete_site_option('canaia_assist_show_modal');

