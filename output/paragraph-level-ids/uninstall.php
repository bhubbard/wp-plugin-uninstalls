<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rs_para_ids_enabled');
delete_site_option('rs_para_ids_enabled');
delete_option('rs_para_id_prefix');
delete_site_option('rs_para_id_prefix');
delete_option('rs_anchor_enabled');
delete_site_option('rs_anchor_enabled');
delete_option('rs_anchor_prefix');
delete_site_option('rs_anchor_prefix');
delete_option('rs_styling_enabled');
delete_site_option('rs_styling_enabled');

