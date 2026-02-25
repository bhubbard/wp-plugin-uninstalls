-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cora_url', 'cora_id', 'cora_digitable', 'cora_document', 'cora_paid_amount', 'cora_paid_at');
DELETE FROM wp_usermeta WHERE meta_key IN ('cora_url', 'cora_id', 'cora_digitable', 'cora_document', 'cora_paid_amount', 'cora_paid_at');
DELETE FROM wp_termmeta WHERE meta_key IN ('cora_url', 'cora_id', 'cora_digitable', 'cora_document', 'cora_paid_amount', 'cora_paid_at');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cora_url', 'cora_id', 'cora_digitable', 'cora_document', 'cora_paid_amount', 'cora_paid_at');

