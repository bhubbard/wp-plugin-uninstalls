-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ss_just_activated', 'ss_version', 'ss_shopsite_url', 'ss_config_type', 'ss_media_url', 'ss_config_dump', 'ss_clientid', 'ss_secretkey', 'ss_code', 'ss_authorizationurl', 'ss_identifier', 'ss_remember_search', 'ss_remembered_search_string');
DELETE FROM wp_options WHERE option_name LIKE 'ss_%';

