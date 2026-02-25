<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('iq_posting_notice');
delete_site_option('iq_posting_notice');
delete_option('postingiq_settings');
delete_site_option('postingiq_settings');

// Delete Transients
delete_transient('iq_posting_news');
delete_site_transient('iq_posting_news');

