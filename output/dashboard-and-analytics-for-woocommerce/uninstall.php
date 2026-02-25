<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('egpda_lite_welcome_notice');
delete_site_transient('egpda_lite_welcome_notice');

