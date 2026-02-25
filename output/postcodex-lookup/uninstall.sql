-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('postcodex_lookup_settings', 'woocommerce_postcodex_lookup_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pl_autosearch', 'pl_override_selector', 'pl_load');
DELETE FROM wp_usermeta WHERE meta_key IN ('pl_autosearch', 'pl_override_selector', 'pl_load');
DELETE FROM wp_termmeta WHERE meta_key IN ('pl_autosearch', 'pl_override_selector', 'pl_load');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pl_autosearch', 'pl_override_selector', 'pl_load');

