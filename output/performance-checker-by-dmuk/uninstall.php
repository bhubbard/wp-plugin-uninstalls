<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dmuk_bo_last_post_number');
delete_site_option('dmuk_bo_last_post_number');
delete_option('dmuk_bo_last_action_message');
delete_site_option('dmuk_bo_last_action_message');
delete_option('dmuk_dmuk_bo_last_action_message ');
delete_site_option('dmuk_dmuk_bo_last_action_message ');
delete_option('dmuk_dmuk_bo_last_action_status ');
delete_site_option('dmuk_dmuk_bo_last_action_status ');
delete_option('dmuk_bo_last_action_status');
delete_site_option('dmuk_bo_last_action_status');
delete_option('dmuk_bo_last_action_count');
delete_site_option('dmuk_bo_last_action_count');
delete_option('dmuk_bo_feedback');
delete_site_option('dmuk_bo_feedback');

