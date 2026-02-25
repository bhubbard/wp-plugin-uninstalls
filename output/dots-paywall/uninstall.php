<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dots_username');
delete_site_option('dots_username');
delete_option('lightbox_showpaywalltext');
delete_site_option('lightbox_showpaywalltext');

