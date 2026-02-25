-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('slogin_outgoing_logout', 'slogin_outgoing_user_creation', 'slogin_main_site_secret_key', 'slogin_setup_complete', 'slogin_sitetype', 'slogin_incomming_logout', 'slogin_incomming_user_creation', 'slogin_main_site_url', 'slogin_sync_site_url');

