-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('maadne_martinsadnetwork_theme', 'maadne_martinsadnetwork_position', 'maadne_martinsadnetwork_offset', 'maadne_martinsadnetwork_key');

