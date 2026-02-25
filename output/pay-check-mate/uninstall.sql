-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pay_check_mate_tables_created', 'pay_check_mate_onboarding', 'pay_check_mate_installed', 'pay_check_mate_version', 'pay_check_mate_general_settings', 'pay_check_mate_redirect_after_activation');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('phone', 'address');
DELETE FROM wp_usermeta WHERE meta_key IN ('phone', 'address');
DELETE FROM wp_termmeta WHERE meta_key IN ('phone', 'address');
DELETE FROM wp_commentmeta WHERE meta_key IN ('phone', 'address');

