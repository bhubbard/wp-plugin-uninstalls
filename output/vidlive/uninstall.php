<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_vidlive_widgets');
delete_site_option('_vidlive_widgets');
delete_option('vidlive_api_key');
delete_site_option('vidlive_api_key');
delete_option('vidlive_embedding');
delete_site_option('vidlive_embedding');
delete_option('vidlive_show_panel');
delete_site_option('vidlive_show_panel');

