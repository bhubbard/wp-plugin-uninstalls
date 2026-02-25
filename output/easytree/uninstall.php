<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('easytree_option_exclude_from_pages');
delete_site_option('easytree_option_exclude_from_pages');
delete_option('easytree_option_display_authors');
delete_site_option('easytree_option_display_authors');
delete_option('easytree_option_exclude_from_authors');
delete_site_option('easytree_option_exclude_from_authors');
delete_option('easytree_option_show_empty_taxs');
delete_site_option('easytree_option_show_empty_taxs');
delete_option('easytree_option_skin');
delete_site_option('easytree_option_skin');

