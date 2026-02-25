-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('acq_modifiable', 'acq_sidebars', 'sidebars_widgets');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_acq_replacements', 'dismissed_wp_pointers');
DELETE FROM wp_usermeta WHERE meta_key IN ('_acq_replacements', 'dismissed_wp_pointers');
DELETE FROM wp_termmeta WHERE meta_key IN ('_acq_replacements', 'dismissed_wp_pointers');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_acq_replacements', 'dismissed_wp_pointers');

