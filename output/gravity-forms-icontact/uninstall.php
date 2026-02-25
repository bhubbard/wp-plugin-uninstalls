<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gf_icontact_settings');
delete_site_option('gf_icontact_settings');
delete_option('gf_icontact_version');
delete_site_option('gf_icontact_version');
delete_option('recently_activated');
delete_site_option('recently_activated');

// Delete Transients
delete_transient('icgf_lists');
delete_site_transient('icgf_lists');
delete_transient('icgf_cf');
delete_site_transient('icgf_cf');
delete_transient('gforms_icontact_version');
delete_site_transient('gforms_icontact_version');

