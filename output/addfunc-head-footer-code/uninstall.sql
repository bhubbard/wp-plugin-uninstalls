-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aFhfc_site_wide_head_code', 'aFhfc_head_code_priority', 'aFhfc_site_wide_body_code', 'aFhfc_site_wide_footer_code', 'aFhfc_footer_code_priority');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('aFhfc_head_code', 'aFhfc_head_replace', 'aFhfc_body_code', 'aFhfc_body_replace', 'aFhfc_footer_code', 'aFhfc_footer_replace');
DELETE FROM wp_usermeta WHERE meta_key IN ('aFhfc_head_code', 'aFhfc_head_replace', 'aFhfc_body_code', 'aFhfc_body_replace', 'aFhfc_footer_code', 'aFhfc_footer_replace');
DELETE FROM wp_termmeta WHERE meta_key IN ('aFhfc_head_code', 'aFhfc_head_replace', 'aFhfc_body_code', 'aFhfc_body_replace', 'aFhfc_footer_code', 'aFhfc_footer_replace');
DELETE FROM wp_commentmeta WHERE meta_key IN ('aFhfc_head_code', 'aFhfc_head_replace', 'aFhfc_body_code', 'aFhfc_body_replace', 'aFhfc_footer_code', 'aFhfc_footer_replace');

