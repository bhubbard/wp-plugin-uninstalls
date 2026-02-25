<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bitpress_reflection_bgcolor');
delete_site_option('bitpress_reflection_bgcolor');
delete_option('bitpress_reflection_height');
delete_site_option('bitpress_reflection_height');

