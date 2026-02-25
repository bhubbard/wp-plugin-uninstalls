<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('newsletter-converter_stripLinks');
delete_site_option('newsletter-converter_stripLinks');
delete_option('newsletter-converter_stripStyles');
delete_site_option('newsletter-converter_stripStyles');
delete_option('newsletter-converter_stripScripts');
delete_site_option('newsletter-converter_stripScripts');
delete_option('newsletter-converter_convertURL');
delete_site_option('newsletter-converter_convertURL');

