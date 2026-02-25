<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jlwebcom_ganalytics_id_usuario');
delete_site_option('jlwebcom_ganalytics_id_usuario');

