-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ald_ata_settings', 'ata_settings', 'ata_first_post_year');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ata_snippet_type', '_ata_include_priority', '_ata_include_relation', '_ata_include_on_posts', '_ata_include_on_posttypes');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ata_snippet_type', '_ata_include_priority', '_ata_include_relation', '_ata_include_on_posts', '_ata_include_on_posttypes');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ata_snippet_type', '_ata_include_priority', '_ata_include_relation', '_ata_include_on_posts', '_ata_include_on_posttypes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ata_snippet_type', '_ata_include_priority', '_ata_include_relation', '_ata_include_on_posts', '_ata_include_on_posttypes');

