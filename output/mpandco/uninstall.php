<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('Payment_mPandco_accessToken_sandbox');
delete_site_option('Payment_mPandco_accessToken_sandbox');
delete_option('Payment_mPandco_accessToken');
delete_site_option('Payment_mPandco_accessToken');
delete_option('Payment_mPandco_tokenCreateTime_sandbox');
delete_site_option('Payment_mPandco_tokenCreateTime_sandbox');
delete_option('Payment_mPandco_tokenCreateTime');
delete_site_option('Payment_mPandco_tokenCreateTime');
delete_option('Payment_mPandco_tokenExpiresIn_sandbox');
delete_site_option('Payment_mPandco_tokenExpiresIn_sandbox');
delete_option('Payment_mPandco_tokenExpiresIn');
delete_site_option('Payment_mPandco_tokenExpiresIn');
delete_option('Payment_mPandco_tokenType');
delete_site_option('Payment_mPandco_tokenType');
delete_option('Payment_mPandco_refreshToken_sandbox');
delete_site_option('Payment_mPandco_refreshToken_sandbox');
delete_option('Payment_mPandco_refreshToken');
delete_site_option('Payment_mPandco_refreshToken');

