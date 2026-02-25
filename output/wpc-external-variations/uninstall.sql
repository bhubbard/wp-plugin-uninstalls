-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcev_settings', 'wpclever_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'wpcev_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpcev_url', 'wpcev_text');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpcev_url', 'wpcev_text');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpcev_url', 'wpcev_text');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpcev_url', 'wpcev_text');

