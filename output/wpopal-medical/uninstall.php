<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('opalmedical_settings');
delete_site_option('opalmedical_settings');
delete_option('elementor_cpt_support');
delete_site_option('elementor_cpt_support');
delete_option('opalmedical_version');
delete_site_option('opalmedical_version');
delete_option('opalmedical_version_upgraded_from');
delete_site_option('opalmedical_version_upgraded_from');
delete_option('opalmedical_setup');
delete_site_option('opalmedical_setup');

// Delete Transients
delete_transient('_opalmedical_installed');
delete_site_transient('_opalmedical_installed');
delete_transient('_opalmedical_activation_redirect');
delete_site_transient('_opalmedical_activation_redirect');

