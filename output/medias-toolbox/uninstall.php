<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_medias_toolbox_renamer');
delete_site_option('_medias_toolbox_renamer');
delete_option('_medias_toolbox_cleanup');
delete_site_option('_medias_toolbox_cleanup');

