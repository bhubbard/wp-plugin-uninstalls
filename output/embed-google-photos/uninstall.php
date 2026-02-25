<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bpgpb-google-photos');
delete_site_option('bpgpb-google-photos');
delete_option('bpgpb_auth_info');
delete_site_option('bpgpb_auth_info');

// Delete Transients
delete_transient('bpgpb_expireTime');
delete_site_transient('bpgpb_expireTime');

