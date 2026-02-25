<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('freecontactformdotcom_email');
delete_site_option('freecontactformdotcom_email');
delete_option('freecontactformdotcom_question');
delete_site_option('freecontactformdotcom_question');
delete_option('freecontactformdotcom_answer');
delete_site_option('freecontactformdotcom_answer');
delete_option('freecontactformdotcom_thankyou');
delete_site_option('freecontactformdotcom_thankyou');
delete_option('freecontactformdotcom_linkback');
delete_site_option('freecontactformdotcom_linkback');

