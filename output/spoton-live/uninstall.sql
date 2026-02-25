-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('spoton_call_tracking', 'spoton_activate_hooks', 'spoton_activate_forms', 'spoton_key', 'spoton_exclude_forms');

