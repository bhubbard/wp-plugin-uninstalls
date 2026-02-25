-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('almc_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sources', 'blockitemid', 'stackable', 'health', 'heals_for', 'damages_for', 'points_of_protection', 'attack_strength', 'durability', 'hunger_restoration', 'crafting_station', 'num_crafted', 'material_count', 'recipe_format');
DELETE FROM wp_usermeta WHERE meta_key IN ('sources', 'blockitemid', 'stackable', 'health', 'heals_for', 'damages_for', 'points_of_protection', 'attack_strength', 'durability', 'hunger_restoration', 'crafting_station', 'num_crafted', 'material_count', 'recipe_format');
DELETE FROM wp_termmeta WHERE meta_key IN ('sources', 'blockitemid', 'stackable', 'health', 'heals_for', 'damages_for', 'points_of_protection', 'attack_strength', 'durability', 'hunger_restoration', 'crafting_station', 'num_crafted', 'material_count', 'recipe_format');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sources', 'blockitemid', 'stackable', 'health', 'heals_for', 'damages_for', 'points_of_protection', 'attack_strength', 'durability', 'hunger_restoration', 'crafting_station', 'num_crafted', 'material_count', 'recipe_format');

