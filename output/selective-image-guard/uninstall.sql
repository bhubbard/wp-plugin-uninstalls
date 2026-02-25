-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'eos_sig_license_key', 'eos_sig_bulk', 'eos_sig_woo_gallery', 'eos_sig_post_types', 'eos_sig_post_types_all', 'eos_sig_watermark', 'eos_sig_watermark_text', 'eos_sig_hard_watermark', 'eos_sig_license_status', 'eos_sig_watermark_device', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_eos_sig_protection');
DELETE FROM wp_usermeta WHERE meta_key IN ('_eos_sig_protection');
DELETE FROM wp_termmeta WHERE meta_key IN ('_eos_sig_protection');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_eos_sig_protection');

