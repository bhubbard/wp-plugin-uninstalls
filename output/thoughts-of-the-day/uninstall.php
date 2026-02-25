<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('thought_text');
delete_site_option('thought_text');
delete_option('thought_title');
delete_site_option('thought_title');

