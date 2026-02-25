<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wcp_wordcount');
delete_site_option('wcp_wordcount');
delete_option('wcp_charactercount');
delete_site_option('wcp_charactercount');
delete_option('wcp_readtime');
delete_site_option('wcp_readtime');
delete_option('wcp_headline');
delete_site_option('wcp_headline');
delete_option('wcp_location');
delete_site_option('wcp_location');

