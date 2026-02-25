<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hello_elecolor_custom_link_color');
delete_site_option('hello_elecolor_custom_link_color');

