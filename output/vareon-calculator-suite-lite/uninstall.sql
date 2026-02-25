-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vareoncalc_lite_options', 'vareoncalc_onboarding_status', 'vareoncalc_pro_activated', 'vareoncalc_pro_deactivated', 'vareoncalc_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('vareoncalc_upgrade_notice_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('vareoncalc_upgrade_notice_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('vareoncalc_upgrade_notice_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('vareoncalc_upgrade_notice_dismissed');

