<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('yasham_livefeed_settings');
delete_site_option('yasham_livefeed_settings');
delete_option('yslf_yasham_livefeed_settings');
delete_site_option('yslf_yasham_livefeed_settings');

