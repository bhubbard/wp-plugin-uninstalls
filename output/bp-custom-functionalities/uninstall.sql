-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ps_lock_bp', 'ps_exclude_levels', 'ps_exclude_roles', 'ps_restrict_member', 'ps_lock_bb');

