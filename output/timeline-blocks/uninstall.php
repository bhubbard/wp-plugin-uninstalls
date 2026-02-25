<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tb_timeline_gutenberg_do_activation_redirect');
delete_site_option('tb_timeline_gutenberg_do_activation_redirect');

