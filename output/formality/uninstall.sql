-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('formality_templates', 'formality_welcome', 'formality_notice', 'formality_flush', 'formality_token', 'formality_version', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_formality_type', 'id', '_formality_bg_layout', '_formality_email');
DELETE FROM wp_usermeta WHERE meta_key IN ('_formality_type', 'id', '_formality_bg_layout', '_formality_email');
DELETE FROM wp_termmeta WHERE meta_key IN ('_formality_type', 'id', '_formality_bg_layout', '_formality_email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_formality_type', 'id', '_formality_bg_layout', '_formality_email');

