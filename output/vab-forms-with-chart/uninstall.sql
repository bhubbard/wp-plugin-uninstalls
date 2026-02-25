-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('VABFWC_FORM', 'VABFWC_FORM_OPT');
DELETE FROM wp_usermeta WHERE meta_key IN ('VABFWC_FORM', 'VABFWC_FORM_OPT');
DELETE FROM wp_termmeta WHERE meta_key IN ('VABFWC_FORM', 'VABFWC_FORM_OPT');
DELETE FROM wp_commentmeta WHERE meta_key IN ('VABFWC_FORM', 'VABFWC_FORM_OPT');

