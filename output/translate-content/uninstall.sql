-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('TRANSLATECONTENT_google_api', 'TRANSLATECONTENT_simpleMetabox', 'hide-translate-content-logo');

