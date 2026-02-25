-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('primary_color_cmyk', 'secondry_color_cmyk');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('with_pdf', 'show_subarticle_in_new_page', 'pdf_quality');
DELETE FROM wp_usermeta WHERE meta_key IN ('with_pdf', 'show_subarticle_in_new_page', 'pdf_quality');
DELETE FROM wp_termmeta WHERE meta_key IN ('with_pdf', 'show_subarticle_in_new_page', 'pdf_quality');
DELETE FROM wp_commentmeta WHERE meta_key IN ('with_pdf', 'show_subarticle_in_new_page', 'pdf_quality');

