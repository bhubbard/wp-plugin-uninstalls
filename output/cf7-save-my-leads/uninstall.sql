-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_leads_created_by_cf7_id', '_leads_created_in_post_id', 'leads_status', 'leads_handled_by');
DELETE FROM wp_usermeta WHERE meta_key IN ('_leads_created_by_cf7_id', '_leads_created_in_post_id', 'leads_status', 'leads_handled_by');
DELETE FROM wp_termmeta WHERE meta_key IN ('_leads_created_by_cf7_id', '_leads_created_in_post_id', 'leads_status', 'leads_handled_by');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_leads_created_by_cf7_id', '_leads_created_in_post_id', 'leads_status', 'leads_handled_by');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'leads_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'leads_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'leads_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'leads_%';

