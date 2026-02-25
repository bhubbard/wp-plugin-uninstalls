-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('jmb_pf_feeds', 'jmb_pf_site_title', 'jmb_pf_site_url', 'jmb_pf_site_description', 'jmb_pf_last_update', 'jmb_pf_filters', 'jmb_pf_orderby', 'jmb_pf_order', 'jmb_pf_limit', 'jmb_pf_offset', 'jmb_pf_post_types', 'jmb_pf_fields', 'jmb_pf_export_filename', 'jmb_pf_export_formats', 'jmb_pf_auto_update');
DELETE FROM wp_usermeta WHERE meta_key IN ('jmb_pf_feeds', 'jmb_pf_site_title', 'jmb_pf_site_url', 'jmb_pf_site_description', 'jmb_pf_last_update', 'jmb_pf_filters', 'jmb_pf_orderby', 'jmb_pf_order', 'jmb_pf_limit', 'jmb_pf_offset', 'jmb_pf_post_types', 'jmb_pf_fields', 'jmb_pf_export_filename', 'jmb_pf_export_formats', 'jmb_pf_auto_update');
DELETE FROM wp_termmeta WHERE meta_key IN ('jmb_pf_feeds', 'jmb_pf_site_title', 'jmb_pf_site_url', 'jmb_pf_site_description', 'jmb_pf_last_update', 'jmb_pf_filters', 'jmb_pf_orderby', 'jmb_pf_order', 'jmb_pf_limit', 'jmb_pf_offset', 'jmb_pf_post_types', 'jmb_pf_fields', 'jmb_pf_export_filename', 'jmb_pf_export_formats', 'jmb_pf_auto_update');
DELETE FROM wp_commentmeta WHERE meta_key IN ('jmb_pf_feeds', 'jmb_pf_site_title', 'jmb_pf_site_url', 'jmb_pf_site_description', 'jmb_pf_last_update', 'jmb_pf_filters', 'jmb_pf_orderby', 'jmb_pf_order', 'jmb_pf_limit', 'jmb_pf_offset', 'jmb_pf_post_types', 'jmb_pf_fields', 'jmb_pf_export_filename', 'jmb_pf_export_formats', 'jmb_pf_auto_update');

