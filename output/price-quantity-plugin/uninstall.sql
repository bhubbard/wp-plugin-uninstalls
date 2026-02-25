-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pq_bordercolor', 'pq_fontcolor', 'pq_fontface', 'pq_fontsize');

