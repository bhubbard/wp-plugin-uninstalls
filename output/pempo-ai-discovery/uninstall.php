<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pempo_citation_style');
delete_site_option('pempo_citation_style');
delete_option('pempo_source_reliability');
delete_site_option('pempo_source_reliability');
delete_option('pempo_publication_name');
delete_site_option('pempo_publication_name');

