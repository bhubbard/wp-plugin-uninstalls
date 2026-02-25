-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ctt_tracking_email_link_position', 'ctt_tracking_allow_users_update', 'ctt_tracking_email_link_type', 'webdados_portuguese_postcodes_nag');

