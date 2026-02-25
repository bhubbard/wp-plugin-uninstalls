<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gesundheitsdatenbefreier_mail_text');
delete_site_option('gesundheitsdatenbefreier_mail_text');
delete_option('gesundheitsdatenbefreier_threshold');
delete_site_option('gesundheitsdatenbefreier_threshold');
delete_option('gesundheitsdatenbefreier_info_text');
delete_site_option('gesundheitsdatenbefreier_info_text');
delete_option('gesundheitsdatenbefreier_mail_subject');
delete_site_option('gesundheitsdatenbefreier_mail_subject');
delete_option('gesundheitsdatenbefreier_good_bye_text');
delete_site_option('gesundheitsdatenbefreier_good_bye_text');
delete_option('gesundheitsdatenbefreier_counter');
delete_site_option('gesundheitsdatenbefreier_counter');

