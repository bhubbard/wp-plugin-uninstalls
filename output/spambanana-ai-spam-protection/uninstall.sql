-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('spambanana_settings', 'spambanana_version', 'comment_previously_approved', 'spambanana_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('spambanana_score');
DELETE FROM wp_usermeta WHERE meta_key IN ('spambanana_score');
DELETE FROM wp_termmeta WHERE meta_key IN ('spambanana_score');
DELETE FROM wp_commentmeta WHERE meta_key IN ('spambanana_score');

