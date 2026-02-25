<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fmtcdisclose_options');
delete_site_option('fmtcdisclose_options');
delete_option('fmtc_affiliate_disclosure_text');
delete_site_option('fmtc_affiliate_disclosure_text');

