<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('universal_link_in_bio_enabled');
delete_site_option('universal_link_in_bio_enabled');
delete_option('universal_link_in_bio_redirect_url');
delete_site_option('universal_link_in_bio_redirect_url');

