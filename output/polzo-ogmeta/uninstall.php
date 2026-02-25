<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('polzo_ogmeta_thumbnail');
delete_site_option('polzo_ogmeta_thumbnail');
delete_option('polzo_ogmeta_type');
delete_site_option('polzo_ogmeta_type');
delete_option('polzo_ogmeta_thumb');
delete_site_option('polzo_ogmeta_thumb');

