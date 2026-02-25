<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('phpbbdb_host');
delete_site_option('phpbbdb_host');
delete_option('phpbbdb_name');
delete_site_option('phpbbdb_name');
delete_option('phpbbdb_user');
delete_site_option('phpbbdb_user');
delete_option('phpbbdb_pass');
delete_site_option('phpbbdb_pass');
delete_option('phpbbdb_prefix');
delete_site_option('phpbbdb_prefix');
delete_option('phpbb_forum_url');
delete_site_option('phpbb_forum_url');
delete_option('phpbb_seo_enabled');
delete_site_option('phpbb_seo_enabled');

