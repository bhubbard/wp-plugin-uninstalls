<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pdb_install_pages_created');
delete_site_option('pdb_install_pages_created');
delete_option('pdb_mode');
delete_site_option('pdb_mode');
delete_option('pdb_email');
delete_site_option('pdb_email');
delete_option('pdb_amount');
delete_site_option('pdb_amount');
delete_option('pdb_currency');
delete_site_option('pdb_currency');
delete_option('pdb_size');
delete_site_option('pdb_size');
delete_option('pdb_purpose');
delete_site_option('pdb_purpose');
delete_option('pdb_SuggestionAmount');
delete_site_option('pdb_SuggestionAmount');

