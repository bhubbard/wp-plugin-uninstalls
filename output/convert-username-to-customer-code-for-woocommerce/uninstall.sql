-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wccutccfw_nascondi_emailbenvenuto', 'wccutccfw_nascondi_colonna_wooadmin', 'wccutccfw_nascondi_colonna_wooorder', 'wccutccfw_nascondi_codiceareaclienti', 'site_admins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'last_name', '_customer_user', 'nickname', 'billing_first_name', 'billing_last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'last_name', '_customer_user', 'nickname', 'billing_first_name', 'billing_last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'last_name', '_customer_user', 'nickname', 'billing_first_name', 'billing_last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'last_name', '_customer_user', 'nickname', 'billing_first_name', 'billing_last_name');

