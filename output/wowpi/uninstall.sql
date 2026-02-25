-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wowpi_options', 'wowpi_characters', 'wowpi_guilds_progress', 'wowpi_guilds', 'wowpi_character_races', 'wowpi_character_classes', 'wowpi_realms_data', 'wowpi_character_achievements', 'wowpi_guild_achievements', 'wowpi_progression_data', 'wowpi_realms', 'styling');
DELETE FROM wp_options WHERE option_name LIKE 'wowpi_artifact_weapons_%';
DELETE FROM wp_options WHERE option_name LIKE 'wowpi_spells_%';
DELETE FROM wp_options WHERE option_name LIKE 'wowpi_items_%';

