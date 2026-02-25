-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dmca_badge_settings', 'imperative_activation_error', 'dmca_login_token');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dmca_account_id', 'dmca_submission_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('dmca_account_id', 'dmca_submission_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('dmca_account_id', 'dmca_submission_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dmca_account_id', 'dmca_submission_status');

