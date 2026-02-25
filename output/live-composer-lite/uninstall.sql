-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dslc_module_id_count', 'dslc_user', '_dslc_activation_redirect_1');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dslc_code', 'dslc_template_for', 'dslc_template_base', 'dslc_template_type', 'dslc_post_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('dslc_code', 'dslc_template_for', 'dslc_template_base', 'dslc_template_type', 'dslc_post_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('dslc_code', 'dslc_template_for', 'dslc_template_base', 'dslc_template_type', 'dslc_post_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dslc_code', 'dslc_template_for', 'dslc_template_base', 'dslc_template_type', 'dslc_post_template');

