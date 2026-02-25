<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_visma_pay_embedded_card_settings');
delete_site_option('woocommerce_visma_pay_embedded_card_settings');

