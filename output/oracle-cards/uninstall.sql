-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eos-cards-options', 'active_sitewide_plugins', 'eos_oc_license_key', 'eos_oc_license_status', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_eos_linked_url_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('_eos_linked_url_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('_eos_linked_url_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_eos_linked_url_key');

