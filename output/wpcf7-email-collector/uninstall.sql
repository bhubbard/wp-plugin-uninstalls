-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mc_wpcf7_form_id', 'mc_wpcf7_form_opened', 'mc_wpcf7_form_mail', 'mc_wpcf7_form_title');
DELETE FROM wp_usermeta WHERE meta_key IN ('mc_wpcf7_form_id', 'mc_wpcf7_form_opened', 'mc_wpcf7_form_mail', 'mc_wpcf7_form_title');
DELETE FROM wp_termmeta WHERE meta_key IN ('mc_wpcf7_form_id', 'mc_wpcf7_form_opened', 'mc_wpcf7_form_mail', 'mc_wpcf7_form_title');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mc_wpcf7_form_id', 'mc_wpcf7_form_opened', 'mc_wpcf7_form_mail', 'mc_wpcf7_form_title');

