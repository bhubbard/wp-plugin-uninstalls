<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('onoffice-settings-duration-cache');
delete_site_option('onoffice-settings-duration-cache');
delete_option('onoffice-address-detail-view-showInfoUserUrl');
delete_site_option('onoffice-address-detail-view-showInfoUserUrl');
delete_option('onoffice-duplicate-check-warning');
delete_site_option('onoffice-duplicate-check-warning');
delete_option('onoffice-click-button-close-action');
delete_site_option('onoffice-click-button-close-action');
delete_option('onoffice-settings-title-and-description');
delete_site_option('onoffice-settings-title-and-description');
delete_option('onoffice-settings-default-email');
delete_site_option('onoffice-settings-default-email');
delete_option('onoffice-detail-view-showTitleUrl');
delete_site_option('onoffice-detail-view-showTitleUrl');
delete_option('onoffice-settings-thousand-separator');
delete_site_option('onoffice-settings-thousand-separator');
delete_option('onoffice-favorization-enableFav');
delete_site_option('onoffice-favorization-enableFav');
delete_option('onoffice-favorization-favButtonLabelFav');
delete_site_option('onoffice-favorization-favButtonLabelFav');
delete_option('onoffice-settings-captcha-secretkey');
delete_site_option('onoffice-settings-captcha-secretkey');
delete_option('onoffice-settings-honeypot');
delete_site_option('onoffice-settings-honeypot');
delete_option('onoffice-is-encryptcredent');
delete_site_option('onoffice-is-encryptcredent');
delete_option('onoffice-settings-captcha-enterprise-projectid');
delete_site_option('onoffice-settings-captcha-enterprise-projectid');
delete_option('onoffice-settings-captcha-enterprise-sitekey');
delete_site_option('onoffice-settings-captcha-enterprise-sitekey');
delete_option('onoffice-settings-captcha-sitekey');
delete_site_option('onoffice-settings-captcha-sitekey');
delete_option('onoffice-default-view');
delete_site_option('onoffice-default-view');
delete_option('oo_plugin_db_version');
delete_site_option('oo_plugin_db_version');
delete_option('onoffice-similar-estates-settings-view');
delete_site_option('onoffice-similar-estates-settings-view');
delete_option('onoffice-notice-cache-was-cleared');
delete_site_option('onoffice-notice-cache-was-cleared');
delete_option('onoffice-maps-mapprovider');
delete_site_option('onoffice-maps-mapprovider');
delete_option('onoffice-settings-apisecret');
delete_site_option('onoffice-settings-apisecret');
delete_option('onoffice-settings-apikey');
delete_site_option('onoffice-settings-apikey');
delete_option('onoffice-pagination-paginationprovider');
delete_site_option('onoffice-pagination-paginationprovider');
delete_option('onoffice-pagination-paginationbyonoffice');
delete_site_option('onoffice-pagination-paginationbyonoffice');
delete_option('onoffice-settings-google-bot-index-pdf-expose');
delete_site_option('onoffice-settings-google-bot-index-pdf-expose');
delete_option('onoffice-settings-googlemaps-key');
delete_site_option('onoffice-settings-googlemaps-key');
delete_option('onoffice-apply-thousand-separator');
delete_site_option('onoffice-apply-thousand-separator');
delete_option('onoffice-settings-opengraph');
delete_site_option('onoffice-settings-opengraph');
delete_option('onoffice-settings-twittercards');
delete_site_option('onoffice-settings-twittercards');
delete_option('onoffice-default-address-view');
delete_site_option('onoffice-default-address-view');
delete_option('onoffice-settings-captcha-enterprise-apikey');
delete_site_option('onoffice-settings-captcha-enterprise-apikey');
delete_option('add-detail-posts-to-rewrite-rules');
delete_site_option('add-detail-posts-to-rewrite-rules');

// Clear Cron Jobs
wp_clear_scheduled_hook('oo_cache_renew');

