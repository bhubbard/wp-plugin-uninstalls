-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('theme_wing_admin_option');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('service_sub_title', 'service_description', 'service_icon', 'team_designation', 'team_about', 'team_social_medias', 'pricing_type', 'pricing_currency', 'pricing_price', 'pricing_plan', 'pricing_features', 'pricing_button_label', 'pricing_button_url', 'project_sub_title', 'project_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('service_sub_title', 'service_description', 'service_icon', 'team_designation', 'team_about', 'team_social_medias', 'pricing_type', 'pricing_currency', 'pricing_price', 'pricing_plan', 'pricing_features', 'pricing_button_label', 'pricing_button_url', 'project_sub_title', 'project_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('service_sub_title', 'service_description', 'service_icon', 'team_designation', 'team_about', 'team_social_medias', 'pricing_type', 'pricing_currency', 'pricing_price', 'pricing_plan', 'pricing_features', 'pricing_button_label', 'pricing_button_url', 'project_sub_title', 'project_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('service_sub_title', 'service_description', 'service_icon', 'team_designation', 'team_about', 'team_social_medias', 'pricing_type', 'pricing_currency', 'pricing_price', 'pricing_plan', 'pricing_features', 'pricing_button_label', 'pricing_button_url', 'project_sub_title', 'project_description');

