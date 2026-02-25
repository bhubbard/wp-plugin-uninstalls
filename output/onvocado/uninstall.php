<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('onvocadoDoActivationRedirect');
delete_site_option('onvocadoDoActivationRedirect');
delete_option('onvocado_key');
delete_site_option('onvocado_key');

