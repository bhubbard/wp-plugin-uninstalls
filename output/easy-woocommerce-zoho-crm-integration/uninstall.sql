-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('easy_wc_zohocrm_modules', 'easy_wc_zohocrm', 'easy_wc_zohocrm_client_id', 'easy_wc_zohocrm_client_secret', 'easy_wc_zohocrm_url', 'easy_wc_zohocrm_customers', 'easy_wc_zohocrm_orders', 'easy_wc_zohocrm_modules_fields');
DELETE FROM wp_options WHERE option_name LIKE 'easy_wc_zohocrm_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('easy_wc_zohocrm_rel', '_billing_first_name', '_billing_last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('easy_wc_zohocrm_rel', '_billing_first_name', '_billing_last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('easy_wc_zohocrm_rel', '_billing_first_name', '_billing_last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('easy_wc_zohocrm_rel', '_billing_first_name', '_billing_last_name');

