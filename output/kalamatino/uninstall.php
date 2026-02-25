<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('klmtn_from_text');
delete_site_option('klmtn_from_text');
delete_option('klmtn_to_text');
delete_site_option('klmtn_to_text');

