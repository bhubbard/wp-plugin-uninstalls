<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aeo_engine_activation_date');
delete_site_option('aeo_engine_activation_date');
delete_option('aeo_engine_version');
delete_site_option('aeo_engine_version');
delete_option('aeo_engine_enable_blogposting');
delete_site_option('aeo_engine_enable_blogposting');
delete_option('aeo_engine_enable_breadcrumb');
delete_site_option('aeo_engine_enable_breadcrumb');
delete_option('aeo_engine_enable_organization');
delete_site_option('aeo_engine_enable_organization');
delete_option('aeo_engine_language');
delete_site_option('aeo_engine_language');
delete_option('aeo_engine_post_types');
delete_site_option('aeo_engine_post_types');
delete_option('aeo_engine_org_name');
delete_site_option('aeo_engine_org_name');
delete_option('aeo_engine_org_description');
delete_site_option('aeo_engine_org_description');
delete_option('aeo_engine_org_url');
delete_site_option('aeo_engine_org_url');
delete_option('aeo_engine_org_logo');
delete_site_option('aeo_engine_org_logo');
delete_option('aeo_engine_author_name');
delete_site_option('aeo_engine_author_name');
delete_option('aeo_engine_author_url');
delete_site_option('aeo_engine_author_url');
delete_option('aeo_engine_social_facebook');
delete_site_option('aeo_engine_social_facebook');
delete_option('aeo_engine_social_twitter');
delete_site_option('aeo_engine_social_twitter');
delete_option('aeo_engine_social_linkedin');
delete_site_option('aeo_engine_social_linkedin');
delete_option('aeo_engine_social_instagram');
delete_site_option('aeo_engine_social_instagram');
delete_option('aeo_engine_social_youtube');
delete_site_option('aeo_engine_social_youtube');
delete_option('aeo_engine_social_github');
delete_site_option('aeo_engine_social_github');

