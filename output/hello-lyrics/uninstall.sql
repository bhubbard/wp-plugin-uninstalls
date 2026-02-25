-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hls_lyric_text_title', 'hls_lyric_text_by', 'hls_lyric_textarea_field');

