-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('weareprivacy_policy_highlights_enabled', 'weareprivacy_policy_highlights_page_triggers');

