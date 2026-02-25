-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('settings_errors', '_rediscache_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('roc_dismissed_pro_release_notice', 'roc_dismissed_wc_pro_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('roc_dismissed_pro_release_notice', 'roc_dismissed_wc_pro_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('roc_dismissed_pro_release_notice', 'roc_dismissed_wc_pro_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('roc_dismissed_pro_release_notice', 'roc_dismissed_wc_pro_notice');

