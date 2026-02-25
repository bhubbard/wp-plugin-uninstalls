-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('visual_composer_multilanguage_default_language', 'visual_composer_multilanguage_languages', 'visual_composer_multilanguage_switcher', 'visual_composer_multilanguage_googleapikey', 'visual_composer_multilanguage_styling', 'visual_composer_multilanguage_autotranslate');
DELETE FROM wp_options WHERE option_name LIKE '%_languages';
DELETE FROM wp_options WHERE option_name LIKE '%_default_language';
DELETE FROM wp_options WHERE option_name LIKE '%_switcher';
DELETE FROM wp_options WHERE option_name LIKE '%_autotranslate';
DELETE FROM wp_options WHERE option_name LIKE '%_styling';
DELETE FROM wp_options WHERE option_name LIKE '%_googleapikey';

