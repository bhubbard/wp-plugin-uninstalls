-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jal_db_version', 'ssr_settings_ssr_item1', 'ssr_settings_ssr_item2', 'ssr_settings_ssr_item3', 'ssr_settings_ssr_item4', 'ssr_settings_ssr_item5', 'ssr_settings_ssr_item6', 'ssr_settings_ssr_item7', 'ssr_settings_ssr_item8', 'ssr_settings_ssr_item9', 'ssr_settings_ssr_item10', 'ssr_settings_ssr_item11', 'ssr_settings_ssr_item12', 'ssr_settings_ssr_item13', 'ssr_settings_ssr_item14', 'ssr_version_installed', 'ssr_settings_ssr_item15', 'ssr_settings_ssr_item16', 'ssr_settings_ssr_item17', 'ssr_settings_ssr_item18', 'ssr_settings_ssr_item19', 'ssr_settings_ssr_item20', 'ssr_settings_ssr_item21', 'some_other_option', 'option_etc', 'checkedssr_item2', 'checkedssr_item3', 'checkedssr_item4', 'checkedssr_item5', 'checkedssr_item6', 'checkedssr_item7', 'checkedssr_item8', 'checkedssr_item9', 'checkedssr_item10', 'checkedssr_item11', 'checkedssr_item12', 'checkedssr_item13');

