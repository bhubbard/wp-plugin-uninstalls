<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sybat.ad_tag_name');
delete_site_option('sybat.ad_tag_name');
delete_option('sybat.affiliate_urls');
delete_site_option('sybat.affiliate_urls');
delete_option('sybat.update_on_save');
delete_site_option('sybat.update_on_save');

