<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sdac_translate');
delete_site_option('sdac_translate');

// Delete Transients
delete_transient('sdac_translate_widget_output');
delete_site_transient('sdac_translate_widget_output');

