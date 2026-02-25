<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lt_page_default');
delete_site_option('lt_page_default');
delete_option('lt_sh_search');
delete_site_option('lt_sh_search');
delete_option('lt_mt_opt');
delete_site_option('lt_mt_opt');
delete_option('lt_lt_opt');
delete_site_option('lt_lt_opt');
delete_option('tlt_opt_metabox');
delete_site_option('tlt_opt_metabox');

