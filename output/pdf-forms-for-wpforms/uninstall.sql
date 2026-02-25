-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('recently_activated', 'wpforms_settings', 'wpcf7', 'pdf-forms-for-woocommerce-settings-pdf-ninja-api-key', 'update_plugins', 'pdf_forms_for_wpforms_pdfninja_key_failure');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'pdf-forms-for-wpforms-%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'pdf-forms-for-wpforms-%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'pdf-forms-for-wpforms-%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'pdf-forms-for-wpforms-%';

