<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('compilekit_run_on_refresh');
delete_site_option('compilekit_run_on_refresh');
delete_option('compilekit_input_css');
delete_site_option('compilekit_input_css');
delete_option('compilekit_output_css');
delete_site_option('compilekit_output_css');
delete_option('compilekit_environment');
delete_site_option('compilekit_environment');
delete_option('compilekit_worker_threads');
delete_site_option('compilekit_worker_threads');
delete_option('compilekit_compiler_mode');
delete_site_option('compilekit_compiler_mode');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_compilekit_compilation_status_%', '_site_transient_compilekit_compilation_status_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('compilekit_tailwindcss_cli_version');
delete_site_transient('compilekit_tailwindcss_cli_version');
delete_transient('compilekit_standalone_cli_version');
delete_site_transient('compilekit_standalone_cli_version');

