-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_coinleywp_settings', 'active_sitewide_plugins', 'coinleywp_needs_onboarding', 'coinleywp_activation_redirect', 'coinleywp_onboarding_dismissed', 'coinleywp_merchant_wallets_full', 'coinleywp_enabled_networks', 'coinleywp_merchant_wallets');
DELETE FROM wp_options WHERE option_name LIKE '%_usd';

