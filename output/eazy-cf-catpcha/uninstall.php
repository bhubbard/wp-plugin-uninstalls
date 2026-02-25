<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('eazycfc_label_text');
delete_site_option('eazycfc_label_text');
delete_option('eazycfc_honeypot');
delete_site_option('eazycfc_honeypot');
delete_option('eazycfc_easy');
delete_site_option('eazycfc_easy');
delete_option('eazycfc_disable_comment_form');
delete_site_option('eazycfc_disable_comment_form');

