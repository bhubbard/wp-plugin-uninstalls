<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pagination_translation');
delete_site_option('pagination_translation');
delete_option('pagination_translate');
delete_site_option('pagination_translate');

