<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('blacklist_local');
delete_site_option('blacklist_local');
delete_option('blacklist_exclude');
delete_site_option('blacklist_exclude');
delete_option('blacklist_last_update');
delete_site_option('blacklist_last_update');
delete_option('blacklist_github_source_updated');
delete_site_option('blacklist_github_source_updated');
delete_option('use_wordpress_comment_blacklist_splorp');
delete_site_option('use_wordpress_comment_blacklist_splorp');
delete_option('apa_another_blacklist_url');
delete_site_option('apa_another_blacklist_url');
delete_option('_transient_timeout_blacklist_github_update_check');
delete_site_option('_transient_timeout_blacklist_github_update_check');
delete_option('use_wordpress_comment_blacklist_splorp ');
delete_site_option('use_wordpress_comment_blacklist_splorp ');

// Delete Transients
delete_transient('blacklist_update_process');
delete_site_transient('blacklist_update_process');
delete_transient('blacklist_github_update_check');
delete_site_transient('blacklist_github_update_check');

