<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nginx_cache_path');
delete_site_option('nginx_cache_path');
delete_option('nginx_auto_purge');
delete_site_option('nginx_auto_purge');

