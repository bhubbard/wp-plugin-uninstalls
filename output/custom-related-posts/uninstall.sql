-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('crp_option', 'crp_migrated_to_version', 'crp_activated');
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bv_birthday_giveaway_2016', 'crp_relations_from', 'crp_relations_to');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bv_birthday_giveaway_2016', 'crp_relations_from', 'crp_relations_to');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bv_birthday_giveaway_2016', 'crp_relations_from', 'crp_relations_to');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bv_birthday_giveaway_2016', 'crp_relations_from', 'crp_relations_to');

