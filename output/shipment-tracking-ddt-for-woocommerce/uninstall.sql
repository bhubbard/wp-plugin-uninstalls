-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hwit_stddt_enable_debug', 'hwit_stddt_enable_email_repeat', 'hwit_stddt_tracking_email_type', 'hw_stddt_include_tracking_info_with_ddt', 'hwit_stddt_notice_ddt_missing', 'hwit_stddt_notice_mail_sent');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_corriere', '_codice_tracciamento', '_link_tracciamento');
DELETE FROM wp_usermeta WHERE meta_key IN ('_corriere', '_codice_tracciamento', '_link_tracciamento');
DELETE FROM wp_termmeta WHERE meta_key IN ('_corriere', '_codice_tracciamento', '_link_tracciamento');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_corriere', '_codice_tracciamento', '_link_tracciamento');

