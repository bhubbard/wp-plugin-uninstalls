<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_pagaleve_settings_environment');
delete_site_option('wc_pagaleve_settings_environment');
delete_option('wc_pagaleve_webhook_token');
delete_site_option('wc_pagaleve_webhook_token');
delete_option('wc_pagaleve_onboarding_lead_id');
delete_site_option('wc_pagaleve_onboarding_lead_id');
delete_option('wc_pagaleve_settings_order_prefix');
delete_site_option('wc_pagaleve_settings_order_prefix');
delete_option('wc_pagaleve_settings_declined_recovery');
delete_site_option('wc_pagaleve_settings_declined_recovery');
delete_option('wc_pagaleve_settings_cron');
delete_site_option('wc_pagaleve_settings_cron');
delete_option('woocommerce_pagaleve-pix_settings');
delete_site_option('woocommerce_pagaleve-pix_settings');
delete_option('wc_pagaleve_settings_product');
delete_site_option('wc_pagaleve_settings_product');
delete_option('wc_pagaleve_settings_cart');
delete_site_option('wc_pagaleve_settings_cart');
delete_option('woocommerce_pagaleve-pix-cash_settings');
delete_site_option('woocommerce_pagaleve-pix-cash_settings');
delete_option('wc_pagaleve_do_activation_redirect');
delete_site_option('wc_pagaleve_do_activation_redirect');

// Clear Cron Jobs
wp_clear_scheduled_hook('pageleve_update_woo_order');

