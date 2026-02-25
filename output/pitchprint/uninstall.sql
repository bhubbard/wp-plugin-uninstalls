-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ppa_api_key', 'ppa_secret_key', 'ppa_cat_customize', 'ppa_email_download_link');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_w2p_set_option', '_w2p_required_option', '_w2p_pdf_download_option', '_w2p_use_design_preview_option', '_w2p_display_option');
DELETE FROM wp_usermeta WHERE meta_key IN ('_w2p_set_option', '_w2p_required_option', '_w2p_pdf_download_option', '_w2p_use_design_preview_option', '_w2p_display_option');
DELETE FROM wp_termmeta WHERE meta_key IN ('_w2p_set_option', '_w2p_required_option', '_w2p_pdf_download_option', '_w2p_use_design_preview_option', '_w2p_display_option');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_w2p_set_option', '_w2p_required_option', '_w2p_pdf_download_option', '_w2p_use_design_preview_option', '_w2p_display_option');

