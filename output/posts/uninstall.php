<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nxt_post_option_template_select');
delete_site_option('nxt_post_option_template_select');
delete_option('nxt_post_plugin_enable');
delete_site_option('nxt_post_plugin_enable');

