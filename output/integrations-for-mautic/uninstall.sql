-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('intmau_mautic_base_url', 'intmau_mautic_client_id', 'intmau_mautic_client_secret', 'intmau_mautic_tracking_enabled', 'intmau_mautic_access_token', 'intmau_woocommerce_enable_newsletter', 'intmau_woocommerce_newsletter_tag', 'intmau_woocommerce_newsletter_message', 'intmau_mautic_refresh_token', 'intmau_mautic_token_expires', 'intmau_module_elementor', 'intmau_module_woocommerce');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('accepts_marketing');
DELETE FROM wp_usermeta WHERE meta_key IN ('accepts_marketing');
DELETE FROM wp_termmeta WHERE meta_key IN ('accepts_marketing');
DELETE FROM wp_commentmeta WHERE meta_key IN ('accepts_marketing');

