<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pastacode_aboutcode_pos');
delete_site_option('pastacode_aboutcode_pos');
delete_option('pastacode_style');
delete_site_option('pastacode_style');
delete_option('pastacode_cm_style');
delete_site_option('pastacode_cm_style');
delete_option('pastacode_legacy');
delete_site_option('pastacode_legacy');
delete_option('pastacode_linenumbers');
delete_site_option('pastacode_linenumbers');
delete_option('pastacode_showinvisible');
delete_site_option('pastacode_showinvisible');
delete_option('pastacode_cache_duration');
delete_site_option('pastacode_cache_duration');
delete_option('pastacode_bo_style');
delete_site_option('pastacode_bo_style');
delete_option('pastacode_preview');
delete_site_option('pastacode_preview');
delete_option('pastacode_comments_opt');
delete_site_option('pastacode_comments_opt');

