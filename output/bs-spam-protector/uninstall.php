<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bs_spam_protector_secret_key');
delete_site_option('bs_spam_protector_secret_key');
delete_option('bs_spam_protector_expiration_interval');
delete_site_option('bs_spam_protector_expiration_interval');
delete_option('bs_spam_protector_log_checkbox');
delete_site_option('bs_spam_protector_log_checkbox');
delete_option('bs_spam_protector_time_check_severity');
delete_site_option('bs_spam_protector_time_check_severity');

