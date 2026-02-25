<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('imgpro_cdn_batched_cache_key');
delete_site_option('imgpro_cdn_batched_cache_key');
delete_option('imgpro_cdn_version');
delete_site_option('imgpro_cdn_version');
delete_option('imgpro_cdn_settings');
delete_site_option('imgpro_cdn_settings');

// Delete Transients
delete_transient('imgpro_cdn_subscription_pending');
delete_site_transient('imgpro_cdn_subscription_pending');
delete_transient('imgpro_cdn_pending_payment');
delete_site_transient('imgpro_cdn_pending_payment');
delete_transient('imgpro_cdn_payment_pending_recovery');
delete_site_transient('imgpro_cdn_payment_pending_recovery');
delete_transient('imgpro_cdn_site_data');
delete_site_transient('imgpro_cdn_site_data');
delete_transient('imgpro_cdn_tiers');
delete_site_transient('imgpro_cdn_tiers');
delete_transient('imgpro_cdn_last_sync');
delete_site_transient('imgpro_cdn_last_sync');

