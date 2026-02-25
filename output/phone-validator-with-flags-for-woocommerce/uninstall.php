<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('phone_validator_flags_activation_time');
delete_site_option('phone_validator_flags_activation_time');
delete_option('phone_validator_flags_last_notice_time');
delete_site_option('phone_validator_flags_last_notice_time');

