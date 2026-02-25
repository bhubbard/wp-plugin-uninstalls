-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tacwp_postmgr_frbackup', '_seoba_findrepviewed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_accelerate_posthits', '_accelerate_postlasthit');
DELETE FROM wp_usermeta WHERE meta_key IN ('_accelerate_posthits', '_accelerate_postlasthit');
DELETE FROM wp_termmeta WHERE meta_key IN ('_accelerate_posthits', '_accelerate_postlasthit');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_accelerate_posthits', '_accelerate_postlasthit');

