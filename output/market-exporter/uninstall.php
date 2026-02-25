<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wooya_settings');
delete_site_option('wooya_settings');
delete_option('market_exporter_shop_settings');
delete_site_option('market_exporter_shop_settings');
delete_option('wooya_version');
delete_site_option('wooya_version');
delete_option('wooya-progress-step');
delete_site_option('wooya-progress-step');
delete_option('market_exporter_doing_cron');
delete_site_option('market_exporter_doing_cron');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('woocommerce_dimension_unit');
delete_site_option('woocommerce_dimension_unit');
delete_option('market_exporter_notice_hide');
delete_site_option('market_exporter_notice_hide');

// Delete Transients
delete_transient('wooya-generating-yml');
delete_site_transient('wooya-generating-yml');

// Clear Cron Jobs
wp_clear_scheduled_hook('market_exporter_cron');

