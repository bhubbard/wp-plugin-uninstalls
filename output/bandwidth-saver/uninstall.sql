-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('imgpro_cdn_batched_cache_key', 'imgpro_cdn_version', 'imgpro_cdn_settings', 'imgpro_cdn_subscription_pending', 'imgpro_cdn_pending_payment', 'imgpro_cdn_payment_pending_recovery', 'imgpro_cdn_site_data', 'imgpro_cdn_tiers', 'imgpro_cdn_last_sync');

