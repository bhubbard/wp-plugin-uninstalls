-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pempo_citation_style', 'pempo_source_reliability', 'pempo_publication_name');

