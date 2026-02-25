-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ela_content_terminal_accepted_terms', 'ela_content_terminal_token');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rss_pi_source_url', 'ct_canonical');
DELETE FROM wp_usermeta WHERE meta_key IN ('rss_pi_source_url', 'ct_canonical');
DELETE FROM wp_termmeta WHERE meta_key IN ('rss_pi_source_url', 'ct_canonical');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rss_pi_source_url', 'ct_canonical');

