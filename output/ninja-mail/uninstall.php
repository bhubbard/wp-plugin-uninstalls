<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ninja_forms_transactional_email_enabled');
delete_site_option('ninja_forms_transactional_email_enabled');
delete_option('ninja_forms_transactional_email_debug');
delete_site_option('ninja_forms_transactional_email_debug');

