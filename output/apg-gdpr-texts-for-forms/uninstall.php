<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('apg_rgpd');
delete_site_option('apg_rgpd');

// Delete Transients
delete_transient('apg_rgpd_jetpack');
delete_site_transient('apg_rgpd_jetpack');
delete_transient('apg_rgpd_plugin');
delete_site_transient('apg_rgpd_plugin');

