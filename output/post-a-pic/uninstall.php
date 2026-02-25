<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('post_a_pic_plugin_options_general');
delete_site_option('post_a_pic_plugin_options_general');

