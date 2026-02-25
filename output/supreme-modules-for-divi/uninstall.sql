-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dsm_flush_rewrite_rules_flag', 'dsm-supreme-modules-for-divi-no-bug', 'dsm-supreme-modules-for-divi-activation-date', 'dsm_settings_misc', 'dsm_settings_social_media', 'dsm_theme_builder', 'dsm_general');
DELETE FROM wp_options WHERE option_name LIKE '%-activation-date';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dsm-header-footer-meta-box-options', 'dsm-css-classes-meta-box-options', 'dsm-remove-default-footer-meta-box-options', 'dsm-footer-show-on-blank-template', 'dsm-footer-show-on-404-template', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('dsm-header-footer-meta-box-options', 'dsm-css-classes-meta-box-options', 'dsm-remove-default-footer-meta-box-options', 'dsm-footer-show-on-blank-template', 'dsm-footer-show-on-404-template', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('dsm-header-footer-meta-box-options', 'dsm-css-classes-meta-box-options', 'dsm-remove-default-footer-meta-box-options', 'dsm-footer-show-on-blank-template', 'dsm-footer-show-on-404-template', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dsm-header-footer-meta-box-options', 'dsm-css-classes-meta-box-options', 'dsm-remove-default-footer-meta-box-options', 'dsm-footer-show-on-blank-template', 'dsm-footer-show-on-404-template', '_wp_page_template');

