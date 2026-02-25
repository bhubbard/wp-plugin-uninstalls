-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ezscm_debug_mode', 'ezscm_required_text', 'ezscm_uninstall_keep_data', 'ezscm_custom_css');

