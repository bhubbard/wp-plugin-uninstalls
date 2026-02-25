-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_fms_form_id', 'fms_form', '_epb_form_id', 'epb_form', '_fmsr_form_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_fms_form_id', 'fms_form', '_epb_form_id', 'epb_form', '_fmsr_form_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_fms_form_id', 'fms_form', '_epb_form_id', 'epb_form', '_fmsr_form_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_fms_form_id', 'fms_form', '_epb_form_id', 'epb_form', '_fmsr_form_id');

