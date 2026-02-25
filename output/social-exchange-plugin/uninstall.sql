-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sxdboptions', 'sx_active_campaigns', 'sx_version');

