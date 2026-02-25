-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_tax_display_shop', 'woocommerce_addi_settings', 'woocommerce_myaccount_page_id', 'fx_addi_admin_notice_transient', 'buy-now-pay-later-addi');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('addi_wc_version_warning_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('addi_wc_version_warning_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('addi_wc_version_warning_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('addi_wc_version_warning_dismissed');

