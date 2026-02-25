<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('textarea_rows');
delete_site_option('textarea_rows');
delete_option('button_text');
delete_site_option('button_text');
delete_option('placeholder_text');
delete_site_option('placeholder_text');

