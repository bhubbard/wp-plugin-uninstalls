<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('contador_visitas_show_frontend');
delete_site_option('contador_visitas_show_frontend');

