-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wst_enable', 'wst_size', 'wst_duration', 'wst_txcolor', 'wst_bgcolor', 'wst_overclr', 'wst_otxtclr', 'wst_location', 'wst_style', 'wst_image', 'wst_imgalt');

