<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('qtranslate_default_language');
delete_site_option('qtranslate_default_language');
delete_option('qtranslate_enabled_languages');
delete_site_option('qtranslate_enabled_languages');
delete_option('qtranslate_term_name');
delete_site_option('qtranslate_term_name');

