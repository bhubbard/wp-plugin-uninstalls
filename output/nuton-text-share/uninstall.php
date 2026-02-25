<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('text_share_general');
delete_site_option('text_share_general');
delete_option('text_share_color');
delete_site_option('text_share_color');

