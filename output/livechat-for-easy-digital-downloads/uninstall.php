<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('livechat_edd_license');
delete_site_option('livechat_edd_license');
delete_option('livechat_edd_email');
delete_site_option('livechat_edd_email');
delete_option('livechat_edd_cartDetails');
delete_site_option('livechat_edd_cartDetails');
delete_option('livechat_edd_disableMobile');
delete_site_option('livechat_edd_disableMobile');
delete_option('livechat_edd_disableGuests');
delete_site_option('livechat_edd_disableGuests');
delete_option('livechat_edd_review_notice_start_timestamp');
delete_site_option('livechat_edd_review_notice_start_timestamp');
delete_option('livechat_edd_review_notice_start_timestamp_offset');
delete_site_option('livechat_edd_review_notice_start_timestamp_offset');
delete_option('livechat_edd_review_notice_dismissed');
delete_site_option('livechat_edd_review_notice_dismissed');

