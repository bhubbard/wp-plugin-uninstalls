<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('scpb_vasu_banner_image');
delete_site_option('scpb_vasu_banner_image');

