-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('reviewmojo_stats', 'reviewmojo_settings', 'reviewmojo_funnel_page_id');

