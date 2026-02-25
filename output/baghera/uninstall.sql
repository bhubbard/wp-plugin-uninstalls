-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_baghera_option_name', 'woocommerce_baghera_option');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('fattura_creata', 'fattura_status', '_billing_piva', '_billing_fiscalcode');
DELETE FROM wp_usermeta WHERE meta_key IN ('fattura_creata', 'fattura_status', '_billing_piva', '_billing_fiscalcode');
DELETE FROM wp_termmeta WHERE meta_key IN ('fattura_creata', 'fattura_status', '_billing_piva', '_billing_fiscalcode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('fattura_creata', 'fattura_status', '_billing_piva', '_billing_fiscalcode');

