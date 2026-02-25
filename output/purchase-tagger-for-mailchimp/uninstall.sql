-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mctwc_version', 'woocommerce_mailchimp-tags_settings', 'mctwc_api_status');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mctwc_dismissed_config_notice', 'mctwc_dismissed_invalid_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('mctwc_dismissed_config_notice', 'mctwc_dismissed_invalid_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('mctwc_dismissed_config_notice', 'mctwc_dismissed_invalid_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mctwc_dismissed_config_notice', 'mctwc_dismissed_invalid_notice');

