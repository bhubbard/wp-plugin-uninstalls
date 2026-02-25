-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('asl_analytics', 'asl_compatibility', 'asl_performance', 'asl_version', 'asl_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_custom_conversion_rate');
DELETE FROM wp_usermeta WHERE meta_key IN ('_custom_conversion_rate');
DELETE FROM wp_termmeta WHERE meta_key IN ('_custom_conversion_rate');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_custom_conversion_rate');

