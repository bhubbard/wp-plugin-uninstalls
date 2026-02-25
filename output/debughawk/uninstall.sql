-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('debughawk_config', 'debughawk_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('debughawk_notice_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('debughawk_notice_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('debughawk_notice_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('debughawk_notice_dismissed');

