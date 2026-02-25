<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('googlenewssitemap_tagkeywords');
delete_site_option('googlenewssitemap_tagkeywords');
delete_option('googlenewssitemap_includePages');
delete_site_option('googlenewssitemap_includePages');
delete_option('googlenewssitemap_includePosts');
delete_site_option('googlenewssitemap_includePosts');
delete_option('googlenewssitemap_excludeCat');
delete_site_option('googlenewssitemap_excludeCat');
delete_option('rss_language');
delete_site_option('rss_language');

