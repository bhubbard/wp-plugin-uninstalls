<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('custom_checkout_note_title');
delete_site_option('custom_checkout_note_title');
delete_option('custom_checkout_note_placeholder');
delete_site_option('custom_checkout_note_placeholder');

