<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('shared_vision_lists');
delete_site_transient('shared_vision_lists');
delete_transient('shared_vision_is_valid_license');
delete_site_transient('shared_vision_is_valid_license');

