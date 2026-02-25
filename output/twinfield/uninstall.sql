-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('twinfield_customer_slug', 'twinfield_invoice_slug', 'wp_twinfield_default_invoice_type', 'twinfield_username', 'twinfield_password', 'twinfield_organisation', 'twinfield_default_office_code', 'twinfield_default_invoice_type', 'twinfield_default_vat_code', 'twinfield_default_article_code', 'twinfield_default_subarticle_code');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_twinfield_article_code', '_twinfield_subarticle_code', '_twinfield_customer_id', '_twinfield_response', '_twinfield_invoice_number');
DELETE FROM wp_usermeta WHERE meta_key IN ('_twinfield_article_code', '_twinfield_subarticle_code', '_twinfield_customer_id', '_twinfield_response', '_twinfield_invoice_number');
DELETE FROM wp_termmeta WHERE meta_key IN ('_twinfield_article_code', '_twinfield_subarticle_code', '_twinfield_customer_id', '_twinfield_response', '_twinfield_invoice_number');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_twinfield_article_code', '_twinfield_subarticle_code', '_twinfield_customer_id', '_twinfield_response', '_twinfield_invoice_number');

