<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vbean_favicon_metrobgcolour');
delete_site_option('vbean_favicon_metrobgcolour');
delete_option('vbean_favicon_iconimage');
delete_site_option('vbean_favicon_iconimage');
delete_option('vbean_favicon_iconlandscape');
delete_site_option('vbean_favicon_iconlandscape');
delete_option('vbean_favicon_faviconoverridetheme');
delete_site_option('vbean_favicon_faviconoverridetheme');

