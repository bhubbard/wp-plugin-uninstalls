-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lifeai_aitranslator_cache_version', 'lifeai_aitranslator_settings', 'lifeai_aitranslator_custom_languages', 'lifeai_aitranslator_version', 'lifeai_aitranslator_admin_notices');

