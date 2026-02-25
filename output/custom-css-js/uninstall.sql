-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('custom-css-js-tree', 'ccj_settings', 'ccj-custom_codes_for_block_editor');
DELETE FROM wp_options WHERE option_name LIKE '%_activation_time';
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_active', '_edit_last', 'options', '_slug');
DELETE FROM wp_usermeta WHERE meta_key IN ('_active', '_edit_last', 'options', '_slug');
DELETE FROM wp_termmeta WHERE meta_key IN ('_active', '_edit_last', 'options', '_slug');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_active', '_edit_last', 'options', '_slug');

