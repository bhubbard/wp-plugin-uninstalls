<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('showtext_options');
delete_site_option('showtext_options');
delete_option('language_options');
delete_site_option('language_options');
delete_option('cmt_meta_version');
delete_site_option('cmt_meta_version');

