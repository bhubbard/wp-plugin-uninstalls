-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sjea_parent_page_url', '_sjea_mailer_services', '_sjea_mailer_campaigns');

