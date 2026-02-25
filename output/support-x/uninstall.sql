-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_myaccount_page_id');
DELETE FROM wp_options WHERE option_name LIKE '%_boxes';
DELETE FROM wp_options WHERE option_name LIKE '%_tags';
DELETE FROM wp_options WHERE option_name LIKE '%_meta';
DELETE FROM wp_options WHERE option_name LIKE '%_custom_fields';
DELETE FROM wp_options WHERE option_name LIKE '%_freshdesk_agents';
DELETE FROM wp_options WHERE option_name LIKE '%_zendesk_agents';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('vx_teamwork_id', 'vx_zendesk_id', 'billing_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('vx_teamwork_id', 'vx_zendesk_id', 'billing_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('vx_teamwork_id', 'vx_zendesk_id', 'billing_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('vx_teamwork_id', 'vx_zendesk_id', 'billing_phone');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_id';

