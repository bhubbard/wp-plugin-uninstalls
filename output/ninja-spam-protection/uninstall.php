<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('ninja-spam-protection-activation-notice');
delete_site_transient('ninja-spam-protection-activation-notice');

