<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('sipexa-flow-activation-notice');
delete_site_transient('sipexa-flow-activation-notice');

