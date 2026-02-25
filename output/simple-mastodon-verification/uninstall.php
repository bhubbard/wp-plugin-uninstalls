<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smverification_site_url');
delete_site_option('smverification_site_url');
delete_option('smverification_allow_authors');
delete_site_option('smverification_allow_authors');

