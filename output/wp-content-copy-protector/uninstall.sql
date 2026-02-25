-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wccp_settings', 'wccp_free_active_time', 'wccp_free_review_dismiss');

