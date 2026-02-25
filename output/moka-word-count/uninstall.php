<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('moka_wcp_wordcount');
delete_site_option('moka_wcp_wordcount');
delete_option('moka_wcp_charactercount');
delete_site_option('moka_wcp_charactercount');
delete_option('moka_wcp_readtime');
delete_site_option('moka_wcp_readtime');
delete_option('moka_wcp_headline');
delete_site_option('moka_wcp_headline');
delete_option('moka_wcp_location');
delete_site_option('moka_wcp_location');

