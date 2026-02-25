<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('likejs_url');
delete_site_option('likejs_url');
delete_option('likejs_backlink');
delete_site_option('likejs_backlink');
delete_option('likejs_headline');
delete_site_option('likejs_headline');
delete_option('likejs_px');
delete_site_option('likejs_px');

