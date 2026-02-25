<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kalutoStaticTemplatePageOnce');
delete_site_option('kalutoStaticTemplatePageOnce');
delete_option('KalutoStaticTemplatePages');
delete_site_option('KalutoStaticTemplatePages');

