-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('avacy_show_banner', 'avacy_enable_preemptive_block', 'avacy_tenant', 'avacy_webspace_key', 'avacy_webspace_id', 'avacy_api_token', 'avacy_WooCommerce_Checkout_Form_form_user_identifier', 'avacy_active_tab', 'settings_errors');
DELETE FROM wp_options WHERE option_name LIKE '%_form_user_identifier';
DELETE FROM wp_options WHERE option_name LIKE '%_radio_enabled';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_data');

