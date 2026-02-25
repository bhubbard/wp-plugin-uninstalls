-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocf_settings', 'woocf_log', 'woocf_notice_toggled', 'woocommerce_demo_store', 'cloudflare_api_email', 'cloudflare_api_key', 'woocf_activated_on', 'woocommerce_version');

