<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cr_postwarning__custom_message');
delete_site_option('cr_postwarning__custom_message');

