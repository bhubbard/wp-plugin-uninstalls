<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mospw_patreon_link');
delete_site_option('mospw_patreon_link');
delete_option('mospw_cat_slug');
delete_site_option('mospw_cat_slug');

