-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpedtra-meta', 'wpedtra-terms', 'wpedtra-p2p', 'wpedtra-children_ids');
DELETE FROM wp_options WHERE option_name LIKE 'wpedtra-pt-%';

