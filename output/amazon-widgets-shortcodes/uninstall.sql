-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('awshortcode_region', 'awshortcode_tracking_id', 'awshortcode_inline_documentation', 'awshortcode_align', 'awshortcode_feed', 'awshortcode_strict_standards', 'awshortcode_context_links', 'awshortcode_product_preview', 'awshortcode_disabled_widgets', 'awshortcode_tracking_image');
DELETE FROM wp_options WHERE option_name LIKE 'awshortcode_%';

