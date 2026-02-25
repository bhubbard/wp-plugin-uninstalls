<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aoph_pushsender_email');
delete_site_option('aoph_pushsender_email');
delete_option('aoph_pushsender_domain');
delete_site_option('aoph_pushsender_domain');
delete_option('aoph_pushsender_id');
delete_site_option('aoph_pushsender_id');
delete_option('aoph_pushsender_post_used');
delete_site_option('aoph_pushsender_post_used');
delete_option('aoph_pushsender_post_update');
delete_site_option('aoph_pushsender_post_update');
delete_option('aoph_pushsender_post_insert');
delete_site_option('aoph_pushsender_post_insert');
delete_option('aoph_pushsender_template_insert_subject');
delete_site_option('aoph_pushsender_template_insert_subject');
delete_option('aoph_pushsender_template_insert_icon');
delete_site_option('aoph_pushsender_template_insert_icon');
delete_option('aoph_pushsender_template_update_subject');
delete_site_option('aoph_pushsender_template_update_subject');
delete_option('aoph_pushsender_template_update_icon');
delete_site_option('aoph_pushsender_template_update_icon');
delete_option('aoph_pushsender_token');
delete_site_option('aoph_pushsender_token');
delete_option('aoph_pushsender_template_update_text');
delete_site_option('aoph_pushsender_template_update_text');
delete_option('aoph_pushsender_template_insert_text');
delete_site_option('aoph_pushsender_template_insert_text');

