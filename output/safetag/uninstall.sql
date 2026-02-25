-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('safetag_license_key', 'safetag_iab_tag_option', 'safetag_exclution_list_chron_option', 'site_audience_iab_tags', 'safetag_post_types', 'safetag_version', 'safetag_post_types', 'iab_tags_resources', 'iab_audience_tags');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('safetag_hide_programmatic_ads', 'safetag_meta_tags');
DELETE FROM wp_usermeta WHERE meta_key IN ('safetag_hide_programmatic_ads', 'safetag_meta_tags');
DELETE FROM wp_termmeta WHERE meta_key IN ('safetag_hide_programmatic_ads', 'safetag_meta_tags');
DELETE FROM wp_commentmeta WHERE meta_key IN ('safetag_hide_programmatic_ads', 'safetag_meta_tags');

