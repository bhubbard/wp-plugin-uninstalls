<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('faqm_options');
delete_site_option('faqm_options');
delete_option('faqm_log');
delete_site_option('faqm_log');

// Delete Transients
delete_transient('faqm_member_status');
delete_site_transient('faqm_member_status');

