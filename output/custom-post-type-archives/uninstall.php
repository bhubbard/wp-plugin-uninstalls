<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pta-url-base');
delete_site_option('pta-url-base');
delete_option('pta-use-rewrite-slug');
delete_site_option('pta-use-rewrite-slug');
delete_option('pta-title');
delete_site_option('pta-title');
delete_option('pta-template-pattern');
delete_site_option('pta-template-pattern');
delete_option('pta-fallback-template');
delete_site_option('pta-fallback-template');
delete_option('pta-enable-feed-links');
delete_site_option('pta-enable-feed-links');
delete_option('pta-enabled-post-type-archives');
delete_site_option('pta-enabled-post-type-archives');
delete_option('pta-enabled-post-type-customisations');
delete_site_option('pta-enabled-post-type-customisations');

