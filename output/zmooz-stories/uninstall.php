<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zmooz_custom_post_type_variable');
delete_site_option('zmooz_custom_post_type_variable');
delete_option('zmooz_custom_plugin_default_user');
delete_site_option('zmooz_custom_plugin_default_user');
delete_option('zmooz_custom_plugin_default_slug');
delete_site_option('zmooz_custom_plugin_default_slug');

