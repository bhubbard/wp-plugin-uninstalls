-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ccr_faq_color_selector');
DELETE FROM wp_usermeta WHERE meta_key IN ('ccr_faq_color_selector');
DELETE FROM wp_termmeta WHERE meta_key IN ('ccr_faq_color_selector');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ccr_faq_color_selector');

