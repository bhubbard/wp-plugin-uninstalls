-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('acs-text1', 'acs-text2', 'acs-text3', 'acs-text4', 'acs-text5', 'acs-text6', 'acs-text7', 'acs-text8', 'acs-text9', 'acs-text10', 'acs-active', 'acs-admin-level', 'acs-custom-lang', 'acs-language');

