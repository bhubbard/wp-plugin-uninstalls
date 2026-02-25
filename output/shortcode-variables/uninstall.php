<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sh-cd-hash');
delete_site_option('sh-cd-hash');
delete_option('sh-cd-edit-permissions');
delete_site_option('sh-cd-edit-permissions');
delete_option('sh-cd-shortcode-db-value-by-id-enabled');
delete_site_option('sh-cd-shortcode-db-value-by-id-enabled');
delete_option('sh-cd-option-default-editor');
delete_site_option('sh-cd-option-default-editor');
delete_option('sh-cd-option-tool-tips-enabled');
delete_site_option('sh-cd-option-tool-tips-enabled');
delete_option('sh-cd-version-number-2021');
delete_site_option('sh-cd-version-number-2021');
delete_option('sh-cd-license-valid');
delete_site_option('sh-cd-license-valid');
delete_option('_yeken_shortcode_variables_update_key_last_dismissed');
delete_site_option('_yeken_shortcode_variables_update_key_last_dismissed');

// Delete Transients
delete_transient('_yeken_shortcode_variables_latest_premium_version');
delete_site_transient('_yeken_shortcode_variables_latest_premium_version');
delete_transient('_yeken_shortcode_variables_update');
delete_site_transient('_yeken_shortcode_variables_update');
delete_transient('yeken_api_prices');
delete_site_transient('yeken_api_prices');

