-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('technoUTM_install_analytics', 'technoUTM_analytics_id', 'technoUTM_analytics_position', 'technoUTM_enable_adminbar', 'technoUTM_active_posts', 'technoUTM_default_utm_source', 'technoUTM_default_utm_medium', 'technoUTM_default_utm_campaign', 'technoUTM_default_utm_term', 'technoUTM_default_utm_content', 'technoUTM_active_pages', 'technoUTM_item_id', 'technoUTM_item_checked');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_techno_utm_url', '_techno_utm_source', '_techno_utm_medium', '_techno_utm_campaign', '_techno_utm_term', '_techno_utm_content');
DELETE FROM wp_usermeta WHERE meta_key IN ('_techno_utm_url', '_techno_utm_source', '_techno_utm_medium', '_techno_utm_campaign', '_techno_utm_term', '_techno_utm_content');
DELETE FROM wp_termmeta WHERE meta_key IN ('_techno_utm_url', '_techno_utm_source', '_techno_utm_medium', '_techno_utm_campaign', '_techno_utm_term', '_techno_utm_content');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_techno_utm_url', '_techno_utm_source', '_techno_utm_medium', '_techno_utm_campaign', '_techno_utm_term', '_techno_utm_content');

