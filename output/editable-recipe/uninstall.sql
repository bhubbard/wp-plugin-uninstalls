-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('editableRecipe_fn', 'editableRecipe_photo', 'editableRecipe_ingredient', 'editableRecipe_instructions', 'editableRecipe_yeild', 'editableRecipe_source', 'editableRecipe_source_url', 'editableRecipe_duration_h', 'editableRecipe_duration_m', 'editableRecipe_summary');
DELETE FROM wp_usermeta WHERE meta_key IN ('editableRecipe_fn', 'editableRecipe_photo', 'editableRecipe_ingredient', 'editableRecipe_instructions', 'editableRecipe_yeild', 'editableRecipe_source', 'editableRecipe_source_url', 'editableRecipe_duration_h', 'editableRecipe_duration_m', 'editableRecipe_summary');
DELETE FROM wp_termmeta WHERE meta_key IN ('editableRecipe_fn', 'editableRecipe_photo', 'editableRecipe_ingredient', 'editableRecipe_instructions', 'editableRecipe_yeild', 'editableRecipe_source', 'editableRecipe_source_url', 'editableRecipe_duration_h', 'editableRecipe_duration_m', 'editableRecipe_summary');
DELETE FROM wp_commentmeta WHERE meta_key IN ('editableRecipe_fn', 'editableRecipe_photo', 'editableRecipe_ingredient', 'editableRecipe_instructions', 'editableRecipe_yeild', 'editableRecipe_source', 'editableRecipe_source_url', 'editableRecipe_duration_h', 'editableRecipe_duration_m', 'editableRecipe_summary');

