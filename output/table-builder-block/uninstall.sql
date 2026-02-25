-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gutenkit_settings_list', 'table_builder_settings_list', '__table_builder_oppai__', '__table_builder_license_key__', 'table_builder_fse_fonts', 'active_sitewide_plugins', 'table_builder_block_migrate');
DELETE FROM wp_options WHERE option_name LIKE '%__banner_data';
DELETE FROM wp_options WHERE option_name LIKE '%__banner_last_check';
DELETE FROM wp_options WHERE option_name LIKE '%_never_show';
DELETE FROM wp_options WHERE option_name LIKE '%_ask_me_later';
DELETE FROM wp_options WHERE option_name LIKE '%_install_date';
DELETE FROM wp_options WHERE option_name LIKE '%_first_action_Date';
DELETE FROM wp_options WHERE option_name LIKE '%_first_action';
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE '%__stories_data';
DELETE FROM wp_options WHERE option_name LIKE '%__stories_last_check';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('table_builder_posts_fonts');
DELETE FROM wp_usermeta WHERE meta_key IN ('table_builder_posts_fonts');
DELETE FROM wp_termmeta WHERE meta_key IN ('table_builder_posts_fonts');
DELETE FROM wp_commentmeta WHERE meta_key IN ('table_builder_posts_fonts');

