<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nnf_scrollbar_default_options');
delete_site_option('nnf_scrollbar_default_options');

