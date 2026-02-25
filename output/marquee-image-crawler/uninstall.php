<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('marquee-image-crawler');
delete_site_option('marquee-image-crawler');

// Delete Transients
delete_transient('_mic_activation_redirect');
delete_site_transient('_mic_activation_redirect');

