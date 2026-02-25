-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('acronym_content', 'acronym_comments', 'acronym_acronyms', 'acronym_html5');

