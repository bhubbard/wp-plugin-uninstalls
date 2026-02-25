-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('awl_em_common_settings', 'em_starter_db_version', 'em_options', 'em_currency_symbol', 'em_starter_updated');
DELETE FROM wp_options WHERE option_name LIKE 'em_layout_cache_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('event_monster_settings', '_em_price', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('event_monster_settings', '_em_price', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('event_monster_settings', '_em_price', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('event_monster_settings', '_em_price', '_wp_attachment_image_alt');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'awl_em_settings_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'awl_em_settings_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'awl_em_settings_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'awl_em_settings_%';

