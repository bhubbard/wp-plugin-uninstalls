<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kpctb_embedded_code');
delete_site_option('kpctb_embedded_code');
delete_option('kpctb_security_key');
delete_site_option('kpctb_security_key');
delete_option('kpctb_channel_id');
delete_site_option('kpctb_channel_id');

