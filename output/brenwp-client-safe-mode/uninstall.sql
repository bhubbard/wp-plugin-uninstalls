-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('brenwp_csm_activity_log');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('brenwp_csm_twofa_notice_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('brenwp_csm_twofa_notice_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('brenwp_csm_twofa_notice_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('brenwp_csm_twofa_notice_dismissed');

