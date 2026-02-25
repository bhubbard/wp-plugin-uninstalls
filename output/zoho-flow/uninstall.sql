-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zoho_flow_admin_footer_text_rated', 'last_review_notice_date', 'zf_boost_speed', 'wppb_manage_fields');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('service_id', '_bricks_page_content_2', '_buddyforms_options', 'ticket_id', '_form_data', '_kad_form_fields', 'kaliforms_field_components', 'blocks', 'level_id', '_elementor_data', 'rform-entri-form-id', 'rform-entri-data', 'rform-entri-referal', 'panels_data', 'post_id', 'suremembers_user_access_group', 'form_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('service_id', '_bricks_page_content_2', '_buddyforms_options', 'ticket_id', '_form_data', '_kad_form_fields', 'kaliforms_field_components', 'blocks', 'level_id', '_elementor_data', 'rform-entri-form-id', 'rform-entri-data', 'rform-entri-referal', 'panels_data', 'post_id', 'suremembers_user_access_group', 'form_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('service_id', '_bricks_page_content_2', '_buddyforms_options', 'ticket_id', '_form_data', '_kad_form_fields', 'kaliforms_field_components', 'blocks', 'level_id', '_elementor_data', 'rform-entri-form-id', 'rform-entri-data', 'rform-entri-referal', 'panels_data', 'post_id', 'suremembers_user_access_group', 'form_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('service_id', '_bricks_page_content_2', '_buddyforms_options', 'ticket_id', '_form_data', '_kad_form_fields', 'kaliforms_field_components', 'blocks', 'level_id', '_elementor_data', 'rform-entri-form-id', 'rform-entri-data', 'rform-entri-referal', 'panels_data', 'post_id', 'suremembers_user_access_group', 'form_id');

