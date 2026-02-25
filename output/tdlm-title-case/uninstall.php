<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tdlm_titlecase_lowercase');
delete_site_option('tdlm_titlecase_lowercase');
delete_option('tdlm_titlecase_uppercase');
delete_site_option('tdlm_titlecase_uppercase');

