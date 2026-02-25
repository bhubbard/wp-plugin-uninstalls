-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aisp_protector_enable_posts', 'aisp_protector_enable_pages');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_aisp_protector_enable_scraping_protection', '_aisp_protected');
DELETE FROM wp_usermeta WHERE meta_key IN ('_aisp_protector_enable_scraping_protection', '_aisp_protected');
DELETE FROM wp_termmeta WHERE meta_key IN ('_aisp_protector_enable_scraping_protection', '_aisp_protected');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_aisp_protector_enable_scraping_protection', '_aisp_protected');

