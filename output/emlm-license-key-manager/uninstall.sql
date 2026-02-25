-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('emlm_options', 'emlm_license_key', 'emlm_license_email', 'emlm_license_domain');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_emlm_generate_key', '_emlm_product_type', '_emlm_license_type', '_emlm_owener_name', '_emlm_maximum_activations', '_emlm_activations', '_emlm_license_status', '_emlm_issue_date', '_emlm_validation_days', '_emlm_product_id', '_emlm_product', '_emlm_owner_email', '_emlm_owner_name', '_emlm_license_email_expired_sent');
DELETE FROM wp_usermeta WHERE meta_key IN ('_emlm_generate_key', '_emlm_product_type', '_emlm_license_type', '_emlm_owener_name', '_emlm_maximum_activations', '_emlm_activations', '_emlm_license_status', '_emlm_issue_date', '_emlm_validation_days', '_emlm_product_id', '_emlm_product', '_emlm_owner_email', '_emlm_owner_name', '_emlm_license_email_expired_sent');
DELETE FROM wp_termmeta WHERE meta_key IN ('_emlm_generate_key', '_emlm_product_type', '_emlm_license_type', '_emlm_owener_name', '_emlm_maximum_activations', '_emlm_activations', '_emlm_license_status', '_emlm_issue_date', '_emlm_validation_days', '_emlm_product_id', '_emlm_product', '_emlm_owner_email', '_emlm_owner_name', '_emlm_license_email_expired_sent');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_emlm_generate_key', '_emlm_product_type', '_emlm_license_type', '_emlm_owener_name', '_emlm_maximum_activations', '_emlm_activations', '_emlm_license_status', '_emlm_issue_date', '_emlm_validation_days', '_emlm_product_id', '_emlm_product', '_emlm_owner_email', '_emlm_owner_name', '_emlm_license_email_expired_sent');

