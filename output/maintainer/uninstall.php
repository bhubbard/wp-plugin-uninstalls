<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('maintainer_secondary_text');
delete_site_option('maintainer_secondary_text');
delete_option('maintainer_ips');
delete_site_option('maintainer_ips');
delete_option('maintainer_roles');
delete_site_option('maintainer_roles');
delete_option('maintainer_active');
delete_site_option('maintainer_active');
delete_option('maintainer_query');
delete_site_option('maintainer_query');
delete_option('maintainer_show_welcome');
delete_site_option('maintainer_show_welcome');
delete_option('maintainer_primary_text');
delete_site_option('maintainer_primary_text');
delete_option('maintainer_page_title');
delete_site_option('maintainer_page_title');
delete_option('maintainer_page_description');
delete_site_option('maintainer_page_description');
delete_option('maintainer_background_color');
delete_site_option('maintainer_background_color');
delete_option('maintainer_text_color');
delete_site_option('maintainer_text_color');
delete_option('maintainer_noindex');
delete_site_option('maintainer_noindex');
delete_option('maintainer_template');
delete_site_option('maintainer_template');

