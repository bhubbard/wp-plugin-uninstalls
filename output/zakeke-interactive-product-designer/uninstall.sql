-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zakeke_do_activation_redirect', 'woocommerce_tax_display_shop', 'zakeke_version', 'woocommerce_tax_round_at_subtotal');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('zakeke_enabled', 'zakeke_configurator_enabled', 'zakeke_provider');
DELETE FROM wp_usermeta WHERE meta_key IN ('zakeke_enabled', 'zakeke_configurator_enabled', 'zakeke_provider');
DELETE FROM wp_termmeta WHERE meta_key IN ('zakeke_enabled', 'zakeke_configurator_enabled', 'zakeke_provider');
DELETE FROM wp_commentmeta WHERE meta_key IN ('zakeke_enabled', 'zakeke_configurator_enabled', 'zakeke_provider');

