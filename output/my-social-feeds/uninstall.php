<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ifbData');
delete_site_option('ifbData');
delete_option('bpifb_Data');
delete_site_option('bpifb_Data');
delete_option('fs_lite_accounts');
delete_site_option('fs_lite_accounts');
delete_option('msfbp_instagram_access_tokens');
delete_site_option('msfbp_instagram_access_tokens');
delete_option('msfbp_pinterest_feeds_credentials');
delete_site_option('msfbp_pinterest_feeds_credentials');
delete_option('ttp_tiktok_accounts_migrated');
delete_site_option('ttp_tiktok_accounts_migrated');
delete_option('ttp_tiktok_accounts');
delete_site_option('ttp_tiktok_accounts');
delete_option('msfbp_twitter_credentials');
delete_site_option('msfbp_twitter_credentials');

// Delete Transients
delete_transient('ttp_tiktok_videos');
delete_site_transient('ttp_tiktok_videos');
delete_transient('ttp_tiktok_user_info');
delete_site_transient('ttp_tiktok_user_info');
delete_transient('ifbInstagramData');
delete_site_transient('ifbInstagramData');
delete_transient('ttp_tiktok_authorized_data');
delete_site_transient('ttp_tiktok_authorized_data');
delete_transient('ttp_tiktok_access_token');
delete_site_transient('ttp_tiktok_access_token');

