-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cf7_salesmate_domain', 'cf7_salesmate_accesskey', 'cf7_salesmate_privatekey', 'cf7_salesmate_token', 'my_cf7_salesmate_forms');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('owner', 'enabledeal', 'record', 'contact_currency', 'dealsalesmate_currency', 'dealsalesmate_source', 'dealsalesmate_priority', 'dealsalesmate_pipeline', 'dealsalesmate_stage');
DELETE FROM wp_usermeta WHERE meta_key IN ('owner', 'enabledeal', 'record', 'contact_currency', 'dealsalesmate_currency', 'dealsalesmate_source', 'dealsalesmate_priority', 'dealsalesmate_pipeline', 'dealsalesmate_stage');
DELETE FROM wp_termmeta WHERE meta_key IN ('owner', 'enabledeal', 'record', 'contact_currency', 'dealsalesmate_currency', 'dealsalesmate_source', 'dealsalesmate_priority', 'dealsalesmate_pipeline', 'dealsalesmate_stage');
DELETE FROM wp_commentmeta WHERE meta_key IN ('owner', 'enabledeal', 'record', 'contact_currency', 'dealsalesmate_currency', 'dealsalesmate_source', 'dealsalesmate_priority', 'dealsalesmate_pipeline', 'dealsalesmate_stage');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'contact_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'contact_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'contact_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'contact_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'dealsalesmate_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'dealsalesmate_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'dealsalesmate_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'dealsalesmate_%';

