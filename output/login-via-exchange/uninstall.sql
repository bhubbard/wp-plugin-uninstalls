-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('loginviaexchange_ews_url', 'loginviaexchange_allow_wp_user', 'loginviaexchange_version');

