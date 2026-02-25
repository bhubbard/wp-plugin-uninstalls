<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('blue-billywig-api-secret');
delete_site_option('blue-billywig-api-secret');
delete_option('blue-billywig-api-id');
delete_site_option('blue-billywig-api-id');
delete_option('blue-billywig-publication');
delete_site_option('blue-billywig-publication');
delete_option('blue-billywig-playout');
delete_site_option('blue-billywig-playout');
delete_option('blue-billywig-playout-video-status');
delete_site_option('blue-billywig-playout-video-status');
delete_option('blue-billywig-embed');
delete_site_option('blue-billywig-embed');
delete_option('blue-billywig-page-count');
delete_site_option('blue-billywig-page-count');
delete_option('bb_get_playout_list');
delete_site_option('bb_get_playout_list');
delete_option('blue-billywig-m-status');
delete_site_option('blue-billywig-m-status');

