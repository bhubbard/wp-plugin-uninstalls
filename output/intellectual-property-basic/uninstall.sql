-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('iproperty_db_version', 'property-amenity_children');
DELETE FROM wp_options WHERE option_name LIKE 'tax_meta_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('iproperty_agent_id', 'property_post_id', 'start_time', 'end_time', 'iproperty_feature_agent');
DELETE FROM wp_usermeta WHERE meta_key IN ('iproperty_agent_id', 'property_post_id', 'start_time', 'end_time', 'iproperty_feature_agent');
DELETE FROM wp_termmeta WHERE meta_key IN ('iproperty_agent_id', 'property_post_id', 'start_time', 'end_time', 'iproperty_feature_agent');
DELETE FROM wp_commentmeta WHERE meta_key IN ('iproperty_agent_id', 'property_post_id', 'start_time', 'end_time', 'iproperty_feature_agent');

