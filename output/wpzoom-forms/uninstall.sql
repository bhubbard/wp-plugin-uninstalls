-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpzoom_forms_welcome_guide_shown', 'wpzf-form_first-activate', 'wpzf_upsell_notice_dismissed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_data', '_wpzf_fields', '_wpzf_form_id', '_form_success_message', '_form_failure_message', '_form_method', '_form_email', '_form_subject');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_data', '_wpzf_fields', '_wpzf_form_id', '_form_success_message', '_form_failure_message', '_form_method', '_form_email', '_form_subject');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_data', '_wpzf_fields', '_wpzf_form_id', '_form_success_message', '_form_failure_message', '_form_method', '_form_email', '_form_subject');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_data', '_wpzf_fields', '_wpzf_form_id', '_form_success_message', '_form_failure_message', '_form_method', '_form_email', '_form_subject');

