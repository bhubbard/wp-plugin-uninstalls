<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('autothumb_apply_the_content');
delete_site_option('autothumb_apply_the_content');
delete_option('autothumb_clean_urls');
delete_site_option('autothumb_clean_urls');
delete_option('autothumb_clean_urls_path');
delete_site_option('autothumb_clean_urls_path');

