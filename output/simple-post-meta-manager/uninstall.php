<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simple_pmm_replace_meta_key');
delete_site_option('simple_pmm_replace_meta_key');
delete_option('simple_pmm_replace_old_meta_value');
delete_site_option('simple_pmm_replace_old_meta_value');
delete_option('simple_pmm_replace_new_meta_value');
delete_site_option('simple_pmm_replace_new_meta_value');

