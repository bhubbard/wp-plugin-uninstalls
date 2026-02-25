<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('plz_configuration_authentification_options');
delete_site_option('plz_configuration_authentification_options');
delete_option('plz_configuration_tracking_options');
delete_site_option('plz_configuration_tracking_options');
delete_option('classic-editor-replace');
delete_site_option('classic-editor-replace');
delete_option('plz_configuration_options');
delete_site_option('plz_configuration_options');

// Delete Transients
delete_transient('plezi_wpbakery_forms');
delete_site_transient('plezi_wpbakery_forms');

