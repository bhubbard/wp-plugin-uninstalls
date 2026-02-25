-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smi_options', 'wpfc_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sermon_date', 'bible_passage', 'sermon_audio', '_wpfc_sermon_duration', '_wpfc_sermon_size', 'sermon_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('sermon_date', 'bible_passage', 'sermon_audio', '_wpfc_sermon_duration', '_wpfc_sermon_size', 'sermon_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('sermon_date', 'bible_passage', 'sermon_audio', '_wpfc_sermon_duration', '_wpfc_sermon_size', 'sermon_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sermon_date', 'bible_passage', 'sermon_audio', '_wpfc_sermon_duration', '_wpfc_sermon_size', 'sermon_description');

