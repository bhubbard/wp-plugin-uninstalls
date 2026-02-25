-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'awin_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_awin_conversion', '_awin_job_id', '_awin_sent_completed', '_product_attributes', '_wc_pinterest_condition', '_delivery_cost', '_model_number', '_promotional_text', '_warranty');
DELETE FROM wp_usermeta WHERE meta_key IN ('_awin_conversion', '_awin_job_id', '_awin_sent_completed', '_product_attributes', '_wc_pinterest_condition', '_delivery_cost', '_model_number', '_promotional_text', '_warranty');
DELETE FROM wp_termmeta WHERE meta_key IN ('_awin_conversion', '_awin_job_id', '_awin_sent_completed', '_product_attributes', '_wc_pinterest_condition', '_delivery_cost', '_model_number', '_promotional_text', '_warranty');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_awin_conversion', '_awin_job_id', '_awin_sent_completed', '_product_attributes', '_wc_pinterest_condition', '_delivery_cost', '_model_number', '_promotional_text', '_warranty');

