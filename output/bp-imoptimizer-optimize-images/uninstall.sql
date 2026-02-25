-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bp_imoptimizer_options', 'bp_imoptimizer_conversion_errors', 'bp_imoptimizer_settings_reset');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bp_imoptimizer_pending_conversion', '_wp_attached_file');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bp_imoptimizer_pending_conversion', '_wp_attached_file');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bp_imoptimizer_pending_conversion', '_wp_attached_file');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bp_imoptimizer_pending_conversion', '_wp_attached_file');

