<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('excerpt_stuff_active');
delete_site_option('excerpt_stuff_active');
delete_option('excerpt_stuff_excerpt_text');
delete_site_option('excerpt_stuff_excerpt_text');
delete_option('excerpt_stuff_excerpt_padding');
delete_site_option('excerpt_stuff_excerpt_padding');

