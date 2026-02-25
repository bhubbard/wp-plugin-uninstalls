-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fibs_automated', 'fibs_dim', 'fibs_override', 'fibs_firstlast', 'fibs_drafts');

