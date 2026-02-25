<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cg_cf_accept_timeout');
delete_site_option('cg_cf_accept_timeout');
delete_option('cg_cf_text');
delete_site_option('cg_cf_text');
delete_option('cg_cf_accept_scrollout');
delete_site_option('cg_cf_accept_scrollout');
delete_option('cg_cf_head_accepted_code');
delete_site_option('cg_cf_head_accepted_code');
delete_option('cg_cf_head_denied_code');
delete_site_option('cg_cf_head_denied_code');
delete_option('cg_cf_foot_accepted_code');
delete_site_option('cg_cf_foot_accepted_code');
delete_option('cg_cf_foot_denied_code');
delete_site_option('cg_cf_foot_denied_code');
delete_option('cg_cf_exception_pages');
delete_site_option('cg_cf_exception_pages');

