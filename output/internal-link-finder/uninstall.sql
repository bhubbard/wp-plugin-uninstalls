-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wilo_dash_integration_enabled', 'wilo_secret_key', 'wilo_acf_integration', 'wilo_exclusions', 'wilo_already_installed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wilo_keywords');
DELETE FROM wp_usermeta WHERE meta_key IN ('wilo_keywords');
DELETE FROM wp_termmeta WHERE meta_key IN ('wilo_keywords');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wilo_keywords');

