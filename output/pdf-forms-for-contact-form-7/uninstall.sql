-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('recently_activated', 'wpforms_settings', 'pdf-forms-for-woocommerce-settings-pdf-ninja-api-key', 'update_plugins', 'wpcf7_pdf_forms_pdfninja_key_failure', 'wpcf7_pdf_forms_updated_old_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wpcf7-pdf-forms-%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wpcf7-pdf-forms-%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wpcf7-pdf-forms-%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wpcf7-pdf-forms-%';

