<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('acn_ex_author_msg');
delete_site_option('acn_ex_author_msg');
delete_option('acn_new_author_msg');
delete_site_option('acn_new_author_msg');
delete_option('acn_sender_name');
delete_site_option('acn_sender_name');
delete_option('acn_email_from');
delete_site_option('acn_email_from');
delete_option('acn_ex_author_subject');
delete_site_option('acn_ex_author_subject');
delete_option('acn_new_author_subject');
delete_site_option('acn_new_author_subject');

// Delete Transients
delete_transient('acn_error');
delete_site_transient('acn_error');

