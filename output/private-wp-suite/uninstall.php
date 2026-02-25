<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('plrpws_protect_blog');
delete_site_option('plrpws_protect_blog');
delete_option('plrpws_protect_feeds');
delete_site_option('plrpws_protect_feeds');
delete_option('plrpws_protect_uploads');
delete_site_option('plrpws_protect_uploads');
delete_option('plrpws_exceptions');
delete_site_option('plrpws_exceptions');

