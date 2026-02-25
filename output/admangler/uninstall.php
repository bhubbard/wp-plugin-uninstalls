<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('AdMangler_db_version');
delete_site_option('AdMangler_db_version');
delete_option('AdMangler_code_version');
delete_site_option('AdMangler_code_version');
delete_option('AdMangler_cache_buster');
delete_site_option('AdMangler_cache_buster');

