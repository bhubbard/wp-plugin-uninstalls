-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('text_summary_api_key', 'text_summary_title', 'text_summary_plugin_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('text-summary');
DELETE FROM wp_usermeta WHERE meta_key IN ('text-summary');
DELETE FROM wp_termmeta WHERE meta_key IN ('text-summary');
DELETE FROM wp_commentmeta WHERE meta_key IN ('text-summary');

