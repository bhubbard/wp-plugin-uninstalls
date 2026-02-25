-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kk_uc_core_default_disable', 'kk_uc_plugins_default_disable', 'kk_uc_themes_default_disable', 'kk_uc_translations_default_disable');

