-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hmd_options', 'head-meta-data-dismiss-notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('hmd_disable_default', 'head-meta-data');
DELETE FROM wp_usermeta WHERE meta_key IN ('hmd_disable_default', 'head-meta-data');
DELETE FROM wp_termmeta WHERE meta_key IN ('hmd_disable_default', 'head-meta-data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('hmd_disable_default', 'head-meta-data');

