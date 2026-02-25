<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cn_nf_exclude_domains');
delete_site_option('cn_nf_exclude_domains');
delete_option('cn_nf_apply_to_menu');
delete_site_option('cn_nf_apply_to_menu');

