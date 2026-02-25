<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('qcclr_autoreply_settings');
delete_site_option('qcclr_autoreply_settings');
delete_option('qcld_clr_key');
delete_site_option('qcld_clr_key');
delete_option('qcld_clr_spam_protection');
delete_site_option('qcld_clr_spam_protection');
delete_option('qcld_clr_spam');
delete_site_option('qcld_clr_spam');
delete_option('qcld_clr_delivery');
delete_site_option('qcld_clr_delivery');
delete_option('qcld_clr_speed');
delete_site_option('qcld_clr_speed');
delete_option('qcld_clr_spam_message');
delete_site_option('qcld_clr_spam_message');
delete_option('comment_link_remove_option_name');
delete_site_option('comment_link_remove_option_name');
delete_option('qcclr_settings');
delete_site_option('qcclr_settings');

