-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('phpmail_from_email', 'phpmail_password');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('optin_From_List_Fields', 'optint_redUrl_Flag', 'optint_Url_link', 'FromUrlOptin', 'Optin_Form_Html', 'Optin_Flds_fld', 'Optin_ID', 'Optin_List_ID');
DELETE FROM wp_usermeta WHERE meta_key IN ('optin_From_List_Fields', 'optint_redUrl_Flag', 'optint_Url_link', 'FromUrlOptin', 'Optin_Form_Html', 'Optin_Flds_fld', 'Optin_ID', 'Optin_List_ID');
DELETE FROM wp_termmeta WHERE meta_key IN ('optin_From_List_Fields', 'optint_redUrl_Flag', 'optint_Url_link', 'FromUrlOptin', 'Optin_Form_Html', 'Optin_Flds_fld', 'Optin_ID', 'Optin_List_ID');
DELETE FROM wp_commentmeta WHERE meta_key IN ('optin_From_List_Fields', 'optint_redUrl_Flag', 'optint_Url_link', 'FromUrlOptin', 'Optin_Form_Html', 'Optin_Flds_fld', 'Optin_ID', 'Optin_List_ID');

