-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vdl_ai_seo_last_status', 'vdl_ai_seo_status_snapshot');

