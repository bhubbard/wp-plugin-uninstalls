<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('seo4cms_plugin_key');
delete_site_option('seo4cms_plugin_key');
delete_option('seo4cms_plugin_uid');
delete_site_option('seo4cms_plugin_uid');

