<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('encore_easy_elements_hider_hidden_elements_selectors');
delete_site_option('encore_easy_elements_hider_hidden_elements_selectors');

