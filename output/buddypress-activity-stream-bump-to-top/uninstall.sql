-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bp_activity_bump_denied_activity_types', 'bp_activity_bump_denied_user_types');

