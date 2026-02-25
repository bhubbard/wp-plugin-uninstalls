-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rda_access_switch', 'rda_access_cap', 'rda_enable_profile', 'rda_redirect_url', 'rda_login_message', 'rda-settings');

