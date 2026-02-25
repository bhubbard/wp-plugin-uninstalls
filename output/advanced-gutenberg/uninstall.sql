-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('advgb_settings', 'advgb_custom_styles', 'advgb_recaptcha_config', 'org_series_options', 'advgb_blocks_default_config', 'advgb_blocks_list', 'advgb_maybe_new_blocks', 'advgb_gutenberg_version', 'advgb_blocks_user_roles', 'advgb_contacts_saved', 'advgb_email_sender', 'advgb_newsletter_saved', 'advgb_block_controls', 'advgb_block_control_presets', 'advgb_version', 'advgb_jureview_installation_time', 'advgb_jufeedback_version', 'ppb_reviews_installed_on', 'advgb_reviews_installed_on', 'advgb_auto_insert_notices');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_series_part', 'advgb_blocks_editor_width', 'advgb_blocks_columns_visual_guide', '_advgb_block_id', '_advgb_position', '_advgb_blocks', '_advgb_position_value', '_advgb_post_types', '_advgb_taxonomies', '_advgb_authors', '_advgb_post_ids', '_advgb_exclude_post_ids', '_advgb_post_months', '_advgb_post_years', '_advgb_excluded_blocks', '_advgb_priority', 'roles_access', 'blocks');
DELETE FROM wp_usermeta WHERE meta_key IN ('_series_part', 'advgb_blocks_editor_width', 'advgb_blocks_columns_visual_guide', '_advgb_block_id', '_advgb_position', '_advgb_blocks', '_advgb_position_value', '_advgb_post_types', '_advgb_taxonomies', '_advgb_authors', '_advgb_post_ids', '_advgb_exclude_post_ids', '_advgb_post_months', '_advgb_post_years', '_advgb_excluded_blocks', '_advgb_priority', 'roles_access', 'blocks');
DELETE FROM wp_termmeta WHERE meta_key IN ('_series_part', 'advgb_blocks_editor_width', 'advgb_blocks_columns_visual_guide', '_advgb_block_id', '_advgb_position', '_advgb_blocks', '_advgb_position_value', '_advgb_post_types', '_advgb_taxonomies', '_advgb_authors', '_advgb_post_ids', '_advgb_exclude_post_ids', '_advgb_post_months', '_advgb_post_years', '_advgb_excluded_blocks', '_advgb_priority', 'roles_access', 'blocks');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_series_part', 'advgb_blocks_editor_width', 'advgb_blocks_columns_visual_guide', '_advgb_block_id', '_advgb_position', '_advgb_blocks', '_advgb_position_value', '_advgb_post_types', '_advgb_taxonomies', '_advgb_authors', '_advgb_post_ids', '_advgb_exclude_post_ids', '_advgb_post_months', '_advgb_post_years', '_advgb_excluded_blocks', '_advgb_priority', 'roles_access', 'blocks');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_series_part_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_series_part_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_series_part_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_series_part_%';

