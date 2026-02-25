-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('oxyXML_active', 'oxyXML_categories', 'oxyXML_path', 'oxyXML_delay', 'oxyXML_count', 'oxyXML_export_excerpt', 'oxyXML_export_content', 'oxyXML_export_date', 'oxyXML_export_category_id', 'oxyXML_export_category_name', 'oxyXML_export_title', 'oxyXML_export_url');

