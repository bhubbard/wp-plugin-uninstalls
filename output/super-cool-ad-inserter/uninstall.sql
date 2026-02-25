-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('scaip_settings_start', 'scaip_settings_period', 'scaip_settings_repetitions', 'scaip_settings_min_paragraphs');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('scaip_prevent_shortcode_addition');
DELETE FROM wp_usermeta WHERE meta_key IN ('scaip_prevent_shortcode_addition');
DELETE FROM wp_termmeta WHERE meta_key IN ('scaip_prevent_shortcode_addition');
DELETE FROM wp_commentmeta WHERE meta_key IN ('scaip_prevent_shortcode_addition');

