-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('speculative_loader_settings');
DELETE FROM wp_options WHERE option_name LIKE 'speculative_loader_error_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_speculative_loader_speculative_urls');
DELETE FROM wp_usermeta WHERE meta_key IN ('_speculative_loader_speculative_urls');
DELETE FROM wp_termmeta WHERE meta_key IN ('_speculative_loader_speculative_urls');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_speculative_loader_speculative_urls');

