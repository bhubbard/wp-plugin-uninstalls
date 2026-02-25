<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pbeml_postbox_install_date');
delete_site_option('pbeml_postbox_install_date');
delete_option('pbeml_postbox_ignore_notice');
delete_site_option('pbeml_postbox_ignore_notice');

