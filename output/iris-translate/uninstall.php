<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('iris_translate_options');
delete_site_option('iris_translate_options');
delete_option('iris_translate_seo_options');
delete_site_option('iris_translate_seo_options');
delete_option('iris_translate_url_translations');
delete_site_option('iris_translate_url_translations');
delete_option('iris_custom_translations');
delete_site_option('iris_custom_translations');
delete_option('iris_url_translations');
delete_site_option('iris_url_translations');

