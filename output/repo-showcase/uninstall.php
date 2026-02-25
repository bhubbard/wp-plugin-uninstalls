<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('repo_showcase_github_username');
delete_site_option('repo_showcase_github_username');
delete_option('repo_showcase_github_token');
delete_site_option('repo_showcase_github_token');

