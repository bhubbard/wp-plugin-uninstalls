<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('CjB-NumDelim');
delete_site_option('CjB-NumDelim');
delete_option('CjB-GoogleAPIKey');
delete_site_option('CjB-GoogleAPIKey');
delete_option('CjB-DelimStart_1');
delete_site_option('CjB-DelimStart_1');
delete_option('CjB-DelimEnd_1');
delete_site_option('CjB-DelimEnd_1');
delete_option('CjB-DelimSite_1');
delete_site_option('CjB-DelimSite_1');
delete_option('PrivateRSSFeedLocation');
delete_site_option('PrivateRSSFeedLocation');

