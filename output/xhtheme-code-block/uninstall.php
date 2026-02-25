<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('xhtheme_code_styletype');
delete_site_option('xhtheme_code_styletype');
delete_option('xhtheme_code_mode');
delete_site_option('xhtheme_code_mode');
delete_option('xhtheme_code_languages');
delete_site_option('xhtheme_code_languages');
delete_option('xhtheme_code_defaultLang');
delete_site_option('xhtheme_code_defaultLang');

