-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wtm_header_script', 'wtm_footer_script', 'wtm_enable');
DELETE FROM wp_options WHERE option_name LIKE 'wtm_header_script_%';
DELETE FROM wp_options WHERE option_name LIKE 'wtm_footer_script_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wtm_page_header', '_wtm_page_thank_you', '_wtm_page_footer');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wtm_page_header', '_wtm_page_thank_you', '_wtm_page_footer');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wtm_page_header', '_wtm_page_thank_you', '_wtm_page_footer');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wtm_page_header', '_wtm_page_thank_you', '_wtm_page_footer');

