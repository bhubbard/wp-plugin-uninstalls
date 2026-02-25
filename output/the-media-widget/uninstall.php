<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('obi_the_media_widget_height');
delete_site_option('obi_the_media_widget_height');

