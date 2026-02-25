<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bitpoke_geo_cache_version');
delete_site_option('bitpoke_geo_cache_version');

