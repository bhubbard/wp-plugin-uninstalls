-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('emmwt_countdown_date', 'emmwt_maint_message', 'emmwt_logo_url', 'emmwt_enabled');

