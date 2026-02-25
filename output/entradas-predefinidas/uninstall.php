<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('entradas_predefinidas_value');
delete_site_option('entradas_predefinidas_value');

