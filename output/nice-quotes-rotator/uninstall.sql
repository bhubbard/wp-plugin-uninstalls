-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nq_admin', 'nq_excerpts', 'nq_quotes', 'nq_hello', 'nq_links', 'nq_cats', 'nq_pluggable', 'nq_tag');

