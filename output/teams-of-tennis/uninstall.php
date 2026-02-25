<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vr_tennisclub_link');
delete_site_option('vr_tennisclub_link');
delete_option('vr_tennisteam_link');
delete_site_option('vr_tennisteam_link');
delete_option('vr_tennisballmodus_link');
delete_site_option('vr_tennisballmodus_link');

