-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('heateor_sss', 'heateor_sss_twitcount_notification_read', 'heateor_sss_gdpr_notification_read', 'heateor_sss_version', 'heateor_sss_custom_url_shares', 'heateor_sss_homepage_shares', 'heateor-sss-admin-notice-on-activation');
DELETE FROM wp_options WHERE option_name LIKE 'heateor_sss_share_count_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_heateor_sss_meta', '_heateor_sss_bitly_url', '_heateor_sss_shares_meta');
DELETE FROM wp_usermeta WHERE meta_key IN ('_heateor_sss_meta', '_heateor_sss_bitly_url', '_heateor_sss_shares_meta');
DELETE FROM wp_termmeta WHERE meta_key IN ('_heateor_sss_meta', '_heateor_sss_bitly_url', '_heateor_sss_shares_meta');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_heateor_sss_meta', '_heateor_sss_bitly_url', '_heateor_sss_shares_meta');

