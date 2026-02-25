<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aidd_name');
delete_site_option('aidd_name');
delete_option('aidd_description');
delete_site_option('aidd_description');
delete_option('aidd_website');
delete_site_option('aidd_website');
delete_option('aidd_contact');
delete_site_option('aidd_contact');
delete_option('aidd_logo');
delete_site_option('aidd_logo');
delete_option('aidd_entity_type');
delete_site_option('aidd_entity_type');
delete_option('aidd_jsonld');
delete_site_option('aidd_jsonld');

