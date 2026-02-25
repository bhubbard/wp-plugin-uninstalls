-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lgpd_consent_cyfer_options', 'lgpd_consent_license_key', 'lgpd_consent_license_status');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('lgpd_consent_cyfer_pro_notice_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('lgpd_consent_cyfer_pro_notice_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('lgpd_consent_cyfer_pro_notice_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('lgpd_consent_cyfer_pro_notice_dismissed');

