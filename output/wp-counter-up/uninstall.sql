-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lgx_counter_plugin_clicked', 'lgx_counter_pro_active');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_lgxmilestonemeta', '_save_meta_lgx_counter_generator');
DELETE FROM wp_usermeta WHERE meta_key IN ('_lgxmilestonemeta', '_save_meta_lgx_counter_generator');
DELETE FROM wp_termmeta WHERE meta_key IN ('_lgxmilestonemeta', '_save_meta_lgx_counter_generator');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_lgxmilestonemeta', '_save_meta_lgx_counter_generator');

