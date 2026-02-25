-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fts_email_field_label', 'fts_first_name_field_label', 'fts_last_name_field_label', 'fts_slack_url', 'fts_slack_token', 'fts_slack_form');

