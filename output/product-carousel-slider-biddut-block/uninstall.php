<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('pcsbb_activation_notice');
delete_site_transient('pcsbb_activation_notice');

