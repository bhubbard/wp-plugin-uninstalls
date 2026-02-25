-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wqm_vcf_qrcode_att_id', 'wqm_is_static_qrcode', 'wqm_is_static_vcfqrcode', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('wqm_vcf_qrcode_att_id', 'wqm_is_static_qrcode', 'wqm_is_static_vcfqrcode', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('wqm_vcf_qrcode_att_id', 'wqm_is_static_qrcode', 'wqm_is_static_vcfqrcode', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wqm_vcf_qrcode_att_id', 'wqm_is_static_qrcode', 'wqm_is_static_vcfqrcode', '_thumbnail_id');

