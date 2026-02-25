<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('booketbord_ldjson');
delete_site_option('booketbord_ldjson');
delete_option('booketbord_id');
delete_site_option('booketbord_id');

