<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cwb_username');
delete_site_option('cwb_username');
delete_option('cwb_endorse');
delete_site_option('cwb_endorse');

