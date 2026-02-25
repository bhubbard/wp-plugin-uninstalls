-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tpsm-shipping-calculator_settings', 'tpsm-general_settings', 'TPSM_version', 'tpsm_is_setup_wizard', 'woocommerce_weight_unit', 'tpsm-free-shipping-barfree-shipping_settings', 'tpsm-shipping-fees_settings', 'tpsm-box-shipping_settings', 'tpsm-free-shipping_settings', 'tpsm_do_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tpsm_dismissed_setup_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('tpsm_dismissed_setup_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('tpsm_dismissed_setup_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tpsm_dismissed_setup_notice');

