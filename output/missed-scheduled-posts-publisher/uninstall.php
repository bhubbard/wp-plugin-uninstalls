<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mspp_review_prompt_removed');
delete_site_option('mspp_review_prompt_removed');
delete_option('mspp_review_prompt_delay');
delete_site_option('mspp_review_prompt_delay');

// Delete Transients
delete_transient('mspp_review_prompt_delay');
delete_site_transient('mspp_review_prompt_delay');

