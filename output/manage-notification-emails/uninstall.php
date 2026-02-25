<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('registrationnotification');
delete_site_option('registrationnotification');
delete_option('fa_mne_version');
delete_site_option('fa_mne_version');
delete_option('famne_options');
delete_site_option('famne_options');
delete_option('famne_network_managed');
delete_site_option('famne_network_managed');

