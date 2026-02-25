-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('swift_rank_pro_notice_dismissed', 'swift_rank_pro_notice_dismissed_time', 'swift_rank_settings', 'swift_rank_wizard_state', 'swift_rank_activation_redirect', 'swift_rank_wizard_notice_dismissed', 'swift_rank_wizard_pending');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_schema_type', '_schema_subtype', '_schema_template_data', '_schema_template_conditions', '_swift_rank_overrides', '_wp_attachment_image_alt', 'description', '_product_brand', 'brand');
DELETE FROM wp_usermeta WHERE meta_key IN ('_schema_type', '_schema_subtype', '_schema_template_data', '_schema_template_conditions', '_swift_rank_overrides', '_wp_attachment_image_alt', 'description', '_product_brand', 'brand');
DELETE FROM wp_termmeta WHERE meta_key IN ('_schema_type', '_schema_subtype', '_schema_template_data', '_schema_template_conditions', '_swift_rank_overrides', '_wp_attachment_image_alt', 'description', '_product_brand', 'brand');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_schema_type', '_schema_subtype', '_schema_template_data', '_schema_template_conditions', '_swift_rank_overrides', '_wp_attachment_image_alt', 'description', '_product_brand', 'brand');

