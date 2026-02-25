-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dwlscf_save_continue_expiry_days', 'dwlscf_draft_cleanup_count', 'dwlscf_last_cleanup_time');

