<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('winofm_settings');
delete_site_option('winofm_settings');
delete_option('winofm_saved_glinks');
delete_site_option('winofm_saved_glinks');
delete_option('winofm_session_glinks');
delete_site_option('winofm_session_glinks');
delete_option('winofm_extra_glinks');
delete_site_option('winofm_extra_glinks');
delete_option('winofm_hosted_glinks');
delete_site_option('winofm_hosted_glinks');

