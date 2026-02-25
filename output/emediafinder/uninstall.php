<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('emediafinderdb_cdn_prefix');
delete_site_option('emediafinderdb_cdn_prefix');
delete_option('emediafinderdb_entermediakey');
delete_site_option('emediafinderdb_entermediakey');
delete_option('emediafinderdb_collectionid');
delete_site_option('emediafinderdb_collectionid');
delete_option('emediafinderdb_enabled_users');
delete_site_option('emediafinderdb_enabled_users');
delete_option('emediafinderdb_adminkey');
delete_site_option('emediafinderdb_adminkey');
delete_option('emediafinderdb_main_server');
delete_site_option('emediafinderdb_main_server');
delete_option('emediafinderdb-publish_options');
delete_site_option('emediafinderdb-publish_options');
delete_option('emediafinderdb_email');
delete_site_option('emediafinderdb_email');

