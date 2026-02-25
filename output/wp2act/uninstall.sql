-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('crmaddon_actSetting_option', 'crmaddon_pageShow_option', 'crmaddon_link_option');

