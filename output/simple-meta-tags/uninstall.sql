-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('page_meta_title', 'page_meta_keywords', 'page_meta_description', 'post_meta_title', 'post_meta_keywords', 'post_meta_description', 'use_pages_meta_data', 'use_posts_meta_data', 'meta_title', 'meta_description', 'meta_keywords');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sc_m_title', '_sc_m_description', '_sc_m_keywords');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sc_m_title', '_sc_m_description', '_sc_m_keywords');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sc_m_title', '_sc_m_description', '_sc_m_keywords');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sc_m_title', '_sc_m_description', '_sc_m_keywords');

