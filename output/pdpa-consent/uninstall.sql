-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pdpa-consent-page-id', 'pdpa_option', 'Activated_Plugin', 'pdpa-consent-user_privacy-page');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pdpa_status', 'pdpa_status_time');
DELETE FROM wp_usermeta WHERE meta_key IN ('pdpa_status', 'pdpa_status_time');
DELETE FROM wp_termmeta WHERE meta_key IN ('pdpa_status', 'pdpa_status_time');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pdpa_status', 'pdpa_status_time');

