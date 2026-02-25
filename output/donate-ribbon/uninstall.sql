-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('donate_ribbon_url', 'donate_ribbon_title', 'donate_ribbon_user_offset', 'donate_ribbon_admin_offset');

