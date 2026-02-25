<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('TRANSLATECONTENT_google_api');
delete_site_option('TRANSLATECONTENT_google_api');
delete_option('TRANSLATECONTENT_simpleMetabox');
delete_site_option('TRANSLATECONTENT_simpleMetabox');
delete_option('hide-translate-content-logo');
delete_site_option('hide-translate-content-logo');

