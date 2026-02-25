<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('post2epub_campo_directorio');
delete_site_option('post2epub_campo_directorio');
delete_option('post2epub_campo_video');
delete_site_option('post2epub_campo_video');
delete_option('post2epub_publisher');
delete_site_option('post2epub_publisher');

