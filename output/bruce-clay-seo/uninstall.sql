-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('seotoolset_settings', 'bcseo_subscription');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_seotoolset_attributes', '_seotoolset_meta_title', '_seotoolset_meta_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('_seotoolset_attributes', '_seotoolset_meta_title', '_seotoolset_meta_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('_seotoolset_attributes', '_seotoolset_meta_title', '_seotoolset_meta_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_seotoolset_attributes', '_seotoolset_meta_title', '_seotoolset_meta_description');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_seotoolset_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_seotoolset_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_seotoolset_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_seotoolset_%';

