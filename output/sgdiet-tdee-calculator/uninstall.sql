-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('thesgdiet_tdee_settings_option_name');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sgdiet_goal', 'sgdiet_gender', 'sgdiet_height', 'sgdiet_weight', 'sgdiet_age', 'sgdiet_activity', 'sgdiet_calories_target', 'sgdiet_carbohydrates_target', 'sgdiet_protein_target', 'sgdiet_fat_target', 'sgdiet_dietstyle', 'sgdiet_calories_maintain', 'sgdiet_carbohydrates_maintain', 'sgdiet_protein_maintain', 'sgdiet_fat_maintain');
DELETE FROM wp_usermeta WHERE meta_key IN ('sgdiet_goal', 'sgdiet_gender', 'sgdiet_height', 'sgdiet_weight', 'sgdiet_age', 'sgdiet_activity', 'sgdiet_calories_target', 'sgdiet_carbohydrates_target', 'sgdiet_protein_target', 'sgdiet_fat_target', 'sgdiet_dietstyle', 'sgdiet_calories_maintain', 'sgdiet_carbohydrates_maintain', 'sgdiet_protein_maintain', 'sgdiet_fat_maintain');
DELETE FROM wp_termmeta WHERE meta_key IN ('sgdiet_goal', 'sgdiet_gender', 'sgdiet_height', 'sgdiet_weight', 'sgdiet_age', 'sgdiet_activity', 'sgdiet_calories_target', 'sgdiet_carbohydrates_target', 'sgdiet_protein_target', 'sgdiet_fat_target', 'sgdiet_dietstyle', 'sgdiet_calories_maintain', 'sgdiet_carbohydrates_maintain', 'sgdiet_protein_maintain', 'sgdiet_fat_maintain');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sgdiet_goal', 'sgdiet_gender', 'sgdiet_height', 'sgdiet_weight', 'sgdiet_age', 'sgdiet_activity', 'sgdiet_calories_target', 'sgdiet_carbohydrates_target', 'sgdiet_protein_target', 'sgdiet_fat_target', 'sgdiet_dietstyle', 'sgdiet_calories_maintain', 'sgdiet_carbohydrates_maintain', 'sgdiet_protein_maintain', 'sgdiet_fat_maintain');

