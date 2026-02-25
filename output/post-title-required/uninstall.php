<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ptreq_post_types');
delete_site_option('ptreq_post_types');
delete_option('ptreq_character_limit');
delete_site_option('ptreq_character_limit');
delete_option('ptreq_ignore_chars');
delete_site_option('ptreq_ignore_chars');

