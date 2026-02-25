<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('exalogic_oberonplugins_settings');
delete_site_option('exalogic_oberonplugins_settings');
delete_option('exalogic_oberonplugins_version');
delete_site_option('exalogic_oberonplugins_version');

