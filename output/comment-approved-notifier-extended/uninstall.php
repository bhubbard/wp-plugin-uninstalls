<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cane_default_message_subject');
delete_site_option('cane_default_message_subject');
delete_option('cane_default_message_body');
delete_site_option('cane_default_message_body');

