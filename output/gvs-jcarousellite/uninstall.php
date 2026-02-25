<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gvjcl_custom_css');
delete_site_option('gvjcl_custom_css');
delete_option('gvjcl_content_separ');
delete_site_option('gvjcl_content_separ');

