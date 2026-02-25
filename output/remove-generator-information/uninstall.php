<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('no_generator_metatag_xhtml');
delete_site_option('no_generator_metatag_xhtml');
delete_option('no_generator_metatag_html');
delete_site_option('no_generator_metatag_html');
delete_option('no_generator_metatag_atom');
delete_site_option('no_generator_metatag_atom');
delete_option('no_generator_metatag_rss2');
delete_site_option('no_generator_metatag_rss2');
delete_option('no_generator_metatag_rdf');
delete_site_option('no_generator_metatag_rdf');
delete_option('no_generator_metatag_comment');
delete_site_option('no_generator_metatag_comment');
delete_option('no_generator_metatag_export');
delete_site_option('no_generator_metatag_export');

