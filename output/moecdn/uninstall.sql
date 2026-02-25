-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('moecdn_options', 'moecdn_collect', 'moecdn_activete');

