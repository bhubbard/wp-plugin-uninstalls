<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ddeccf_settings');
delete_site_option('ddeccf_settings');
delete_option('ddeccf_last_rule_update');
delete_site_option('ddeccf_last_rule_update');

