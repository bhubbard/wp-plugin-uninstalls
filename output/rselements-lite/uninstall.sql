-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('client_name', 'client', 'location_name', 'location', 'surface_area_title', 'surface_area', 'created_title', 'created', 'complete_title', 'date', 'project_value_title', 'project_value', 'designation', 'phone', 'email', 'shortbio', 'facebook', 'twitter', 'google_plus', 'linkedin', 'ratings');
DELETE FROM wp_usermeta WHERE meta_key IN ('client_name', 'client', 'location_name', 'location', 'surface_area_title', 'surface_area', 'created_title', 'created', 'complete_title', 'date', 'project_value_title', 'project_value', 'designation', 'phone', 'email', 'shortbio', 'facebook', 'twitter', 'google_plus', 'linkedin', 'ratings');
DELETE FROM wp_termmeta WHERE meta_key IN ('client_name', 'client', 'location_name', 'location', 'surface_area_title', 'surface_area', 'created_title', 'created', 'complete_title', 'date', 'project_value_title', 'project_value', 'designation', 'phone', 'email', 'shortbio', 'facebook', 'twitter', 'google_plus', 'linkedin', 'ratings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('client_name', 'client', 'location_name', 'location', 'surface_area_title', 'surface_area', 'created_title', 'created', 'complete_title', 'date', 'project_value_title', 'project_value', 'designation', 'phone', 'email', 'shortbio', 'facebook', 'twitter', 'google_plus', 'linkedin', 'ratings');

