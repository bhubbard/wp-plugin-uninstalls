<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpas_db_version');
delete_site_option('wpas_db_version');
delete_option('protectAuthor');
delete_site_option('protectAuthor');
delete_option('protectAuthorName');
delete_site_option('protectAuthorName');
delete_option('disableLoggedIn');
delete_site_option('disableLoggedIn');
delete_option('disableRestUser');
delete_site_option('disableRestUser');
delete_option('customLoginError');
delete_site_option('customLoginError');
delete_option('wpas_filterFeed');
delete_site_option('wpas_filterFeed');
delete_option('wpas_filterEmbed');
delete_site_option('wpas_filterEmbed');
delete_option('wpas_filterAuthorSitemap');
delete_site_option('wpas_filterAuthorSitemap');

