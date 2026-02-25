<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpcc-title-hide');
delete_site_option('wpcc-title-hide');
delete_option('wpcc-title-show');
delete_site_option('wpcc-title-show');
delete_option('wpcc-title-text');
delete_site_option('wpcc-title-text');
delete_option('wpcc-metric-system');
delete_site_option('wpcc-metric-system');
delete_option('wpcc-instant-result');
delete_site_option('wpcc-instant-result');
delete_option('wpcc-notification-email');
delete_site_option('wpcc-notification-email');
delete_option('wpcc-primary-color');
delete_site_option('wpcc-primary-color');
delete_option('wpcc-secondary-color');
delete_site_option('wpcc-secondary-color');
delete_option('wpcc_user_agreements');
delete_site_option('wpcc_user_agreements');
delete_option('wpcc_privacy_policy');
delete_site_option('wpcc_privacy_policy');
delete_option('wpcc_privacy_policy_url');
delete_site_option('wpcc_privacy_policy_url');
delete_option('wpcc_privacy_policy_url_text');
delete_site_option('wpcc_privacy_policy_url_text');
delete_option('wpcc_terms_and_conditions');
delete_site_option('wpcc_terms_and_conditions');
delete_option('wpcc_terms_and_conditions_url');
delete_site_option('wpcc_terms_and_conditions_url');
delete_option('wpcc_terms_and_conditions_url_text');
delete_site_option('wpcc_terms_and_conditions_url_text');
delete_option('wpcc_user_agreements_text');
delete_site_option('wpcc_user_agreements_text');
delete_option('wpcc_enable_zapier');
delete_site_option('wpcc_enable_zapier');
delete_option('wpcc_zapier_webhook');
delete_site_option('wpcc_zapier_webhook');
delete_option('wpcc_hide_credits');
delete_site_option('wpcc_hide_credits');
delete_option('wpcc_pro_version_announcement');
delete_site_option('wpcc_pro_version_announcement');
delete_option('wpcc_pro_version_advertisement');
delete_site_option('wpcc_pro_version_advertisement');

// Delete Transients
delete_transient('wp_calorie_calculator_activation_notice');
delete_site_transient('wp_calorie_calculator_activation_notice');
delete_transient('wpcc_pro_deactivate');
delete_site_transient('wpcc_pro_deactivate');

