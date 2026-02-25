<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tfw_telefinity_webrtc_sip_gateway_token');
delete_site_option('tfw_telefinity_webrtc_sip_gateway_token');

