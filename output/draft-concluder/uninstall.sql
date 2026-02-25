-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('draft_concluder_time', 'draft_concluder_prev_time', 'draft_concluder_when', 'draft_concluder_what', 'draft_concluder_age', 'draft_concluder_since', 'draft_concluder_output');

