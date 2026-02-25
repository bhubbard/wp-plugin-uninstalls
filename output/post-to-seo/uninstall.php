<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('my_option_name');
delete_site_option('my_option_name');
delete_option('postToSEO_stopwords');
delete_site_option('postToSEO_stopwords');
delete_option('postToSEO_permanentKeywords');
delete_site_option('postToSEO_permanentKeywords');

