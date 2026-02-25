-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('visualead_url', 'visual_widget', 'my_url', 'visualead_txt', 'visualead_sub');

