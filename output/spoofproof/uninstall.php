<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('SpoofProof_Login_Override');
delete_site_option('SpoofProof_Login_Override');
delete_option('SpoofProof_Stop_JavaScript_Injection');
delete_site_option('SpoofProof_Stop_JavaScript_Injection');
delete_option('SpoofProof_Stop_SQL_Injection');
delete_site_option('SpoofProof_Stop_SQL_Injection');
delete_option('SpoofProof_Num_Retries');
delete_site_option('SpoofProof_Num_Retries');
delete_option('plugin_options');
delete_site_option('plugin_options');
delete_option('SpoofProof_db_version');
delete_site_option('SpoofProof_db_version');
delete_option('Spoo3fProof_Stop_JavaScript_Injection');
delete_site_option('Spoo3fProof_Stop_JavaScript_Injection');
delete_option('SpoofProof_plugin_do_activation_redirect');
delete_site_option('SpoofProof_plugin_do_activation_redirect');

