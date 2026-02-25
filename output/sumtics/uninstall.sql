-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sumtics_settings', 'sumtics_version');
DELETE FROM wp_options WHERE option_name LIKE 'sumtics_active_tab_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ai_sum_length', '_ai_sum_prompt', '_ai_sum_enabled', '_ai_sum_position_override');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ai_sum_length', '_ai_sum_prompt', '_ai_sum_enabled', '_ai_sum_position_override');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ai_sum_length', '_ai_sum_prompt', '_ai_sum_enabled', '_ai_sum_position_override');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ai_sum_length', '_ai_sum_prompt', '_ai_sum_enabled', '_ai_sum_position_override');

