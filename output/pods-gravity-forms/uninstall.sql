-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pods_gf_template_subject', '_pods_gf_template_cc', '_pods_gf_template_bcc');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pods_gf_template_subject', '_pods_gf_template_cc', '_pods_gf_template_bcc');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pods_gf_template_subject', '_pods_gf_template_cc', '_pods_gf_template_bcc');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pods_gf_template_subject', '_pods_gf_template_cc', '_pods_gf_template_bcc');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_pods_gf_remember_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_pods_gf_remember_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_pods_gf_remember_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_pods_gf_remember_%';

