-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_template_footer_options', 'resourcify__cur_tab__', '_resourcify_output_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('resourcify__cur_tab__', 'resourcify_sources');
DELETE FROM wp_usermeta WHERE meta_key IN ('resourcify__cur_tab__', 'resourcify_sources');
DELETE FROM wp_termmeta WHERE meta_key IN ('resourcify__cur_tab__', 'resourcify_sources');
DELETE FROM wp_commentmeta WHERE meta_key IN ('resourcify__cur_tab__', 'resourcify_sources');

