-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'ibanwpf_licenses', 'ibanwpf_reviews_installed_on', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ibanwpf_reviews_dismissed_triggers', '_ibanwpf_reviews_last_dismissed', '_ibanwpf_reviews_already_did');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ibanwpf_reviews_dismissed_triggers', '_ibanwpf_reviews_last_dismissed', '_ibanwpf_reviews_already_did');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ibanwpf_reviews_dismissed_triggers', '_ibanwpf_reviews_last_dismissed', '_ibanwpf_reviews_already_did');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ibanwpf_reviews_dismissed_triggers', '_ibanwpf_reviews_last_dismissed', '_ibanwpf_reviews_already_did');

