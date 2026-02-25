-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aktt_gatagger_utm_source', 'aktt_gatagger_utm_medium', 'aktt_gatagger_utm_term', 'aktt_gatagger_utm_content', 'aktt_gatagger_utm_campaign');

