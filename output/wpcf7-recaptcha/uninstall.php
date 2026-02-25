<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('network_iqfix_recaptcha');
delete_site_option('network_iqfix_recaptcha');

