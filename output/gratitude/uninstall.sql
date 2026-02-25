-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gb_gratitude_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gb_gratitude_meta_appreciate', 'gb_gratitude_meta_grat', 'gb_gratitude_meta_opp', 'gb_gratitude_meta_did', 'gb_gratitude_meta_do', 'gb_gratitude_meta_app');
DELETE FROM wp_usermeta WHERE meta_key IN ('gb_gratitude_meta_appreciate', 'gb_gratitude_meta_grat', 'gb_gratitude_meta_opp', 'gb_gratitude_meta_did', 'gb_gratitude_meta_do', 'gb_gratitude_meta_app');
DELETE FROM wp_termmeta WHERE meta_key IN ('gb_gratitude_meta_appreciate', 'gb_gratitude_meta_grat', 'gb_gratitude_meta_opp', 'gb_gratitude_meta_did', 'gb_gratitude_meta_do', 'gb_gratitude_meta_app');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gb_gratitude_meta_appreciate', 'gb_gratitude_meta_grat', 'gb_gratitude_meta_opp', 'gb_gratitude_meta_did', 'gb_gratitude_meta_do', 'gb_gratitude_meta_app');

