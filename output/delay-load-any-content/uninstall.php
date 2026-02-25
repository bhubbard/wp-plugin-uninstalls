<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('dlac_welcome_message_notice');
delete_site_transient('dlac_welcome_message_notice');

