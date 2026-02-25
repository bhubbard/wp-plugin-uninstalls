-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('upfp_enable_email', 'upfp_email_subject', 'upfp_email_content');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('upf_allowed', 'upf_acs_full', 'upf_foldr_id', 'upf_doc', 'upf_parent_fldr');
DELETE FROM wp_usermeta WHERE meta_key IN ('upf_allowed', 'upf_acs_full', 'upf_foldr_id', 'upf_doc', 'upf_parent_fldr');
DELETE FROM wp_termmeta WHERE meta_key IN ('upf_allowed', 'upf_acs_full', 'upf_foldr_id', 'upf_doc', 'upf_parent_fldr');
DELETE FROM wp_commentmeta WHERE meta_key IN ('upf_allowed', 'upf_acs_full', 'upf_foldr_id', 'upf_doc', 'upf_parent_fldr');

