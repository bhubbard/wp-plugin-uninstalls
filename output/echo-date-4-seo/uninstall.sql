-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ekodate4seo_option_lang', 'ekodate4seo_option_powered');

