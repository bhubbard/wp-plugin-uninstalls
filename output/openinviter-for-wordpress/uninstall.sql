-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('openinviter_settings', 'openinviter_title', 'widget_inviter');

