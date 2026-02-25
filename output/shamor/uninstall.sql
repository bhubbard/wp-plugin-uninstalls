-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shamor_display_template', 'shamor_display_text', 'shamor_start_time', 'shamor_end_time', 'shamor_cache_status');

