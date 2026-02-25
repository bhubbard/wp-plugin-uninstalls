<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dx_delete_attached_media_options');
delete_site_option('dx_delete_attached_media_options');

// Delete Transients
delete_transient('dx_dam_activation');
delete_site_transient('dx_dam_activation');

