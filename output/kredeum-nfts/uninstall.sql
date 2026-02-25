-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_kre_select_collection', '_KRE_STORAGE_AUTO', '_KRE_STORAGE_CHOICE', 'IPFS_API', 'IPFS_CLUSTER_API', 'IPFS_PINNING_API', '_KRE_IPFS_STORAGE_KEY', '_KRE_SWARM_ENDPOINT', '_KRE_SWARM_STORAGE_KEY');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_kre_nid', '_kre_pdf_modified_date', '_kre_url', '_kre_uri', '_wp_attached_file');
DELETE FROM wp_usermeta WHERE meta_key IN ('_kre_nid', '_kre_pdf_modified_date', '_kre_url', '_kre_uri', '_wp_attached_file');
DELETE FROM wp_termmeta WHERE meta_key IN ('_kre_nid', '_kre_pdf_modified_date', '_kre_url', '_kre_uri', '_wp_attached_file');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_kre_nid', '_kre_pdf_modified_date', '_kre_url', '_kre_uri', '_wp_attached_file');

