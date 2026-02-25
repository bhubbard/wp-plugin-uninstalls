<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ekodate4seo_option_lang');
delete_site_option('ekodate4seo_option_lang');
delete_option('ekodate4seo_option_powered');
delete_site_option('ekodate4seo_option_powered');

